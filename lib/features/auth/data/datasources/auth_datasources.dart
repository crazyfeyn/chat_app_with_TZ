import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  static Database? _database;

  DatabaseService._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'app_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Create users table with merged fields from both original classes
    await db.execute('''
      CREATE TABLE users(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        email TEXT UNIQUE,
        password TEXT,
        uid TEXT
      )
    ''');

    // Create messages table
    await db.execute('''
      CREATE TABLE messages(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        receiver_id TEXT,
        sender_id TEXT,
        timestamp INTEGER,
        message TEXT,
        chat_id TEXT
      )
    ''');
  }

  // Authentication Methods (from AuthDataSources)

  /// Creates a new user with email and password
  Future<int> createUser(String email, String password) async {
    final db = await database;
    return await db.insert(
      'users',
      {'email': email, 'password': password},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  /// Fetches a user by email
  Future<Map<String, dynamic>?> fetchUserByEmail(String email) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'users',
      where: 'email = ?',
      whereArgs: [email],
    );
    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }

  // Chat and User Management Methods (from SQLiteServices)

  /// Fetches all users from the database
  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await database;
    return await db.query('users');
  }

  /// Adds a new user with Firebase UID to the database
  Future<void> addNewUser(UserModel newUser) async {
    final db = await database;
    final existingUser = await fetchUserByEmail(newUser.email);

    if (existingUser != null) {
      // Update existing user with UID
      await db.update(
        'users',
        {'uid': newUser.uid},
        where: 'email = ?',
        whereArgs: [newUser.email],
      );
    } else {
      // Insert new user
      await db.insert(
        'users',
        {
          'email': newUser.email,
          'uid': newUser.uid,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  /// Starts a new chat by adding a message to the database
  Future<void> startChat(
      String receiverId, String senderId, String chatId, String message) async {
    if (receiverId.isEmpty ||
        senderId.isEmpty ||
        chatId.isEmpty ||
        message.isEmpty) {
      return;
    }

    final db = await database;
    await db.insert(
      'messages',
      {
        'receiver_id': receiverId,
        'sender_id': senderId,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'message': message,
        'chat_id': chatId,
      },
    );
  }

  /// Fetches active chats between two users
  Future<List<Map<String, dynamic>>> getActiveChats(
      String receiverEmail, String senderEmail) async {
    final db = await database;
    List<String> sortedList = [receiverEmail, senderEmail]
      ..sort((a, b) => a.compareTo(b));
    String chatId = sortedList.join('');

    return await db.query(
      'messages',
      where: 'chat_id = ?',
      whereArgs: [chatId],
      orderBy: 'timestamp',
    );
  }

  /// Starts an image message by saving the image locally and storing its path in the database
  Future<void> startImageMessage(
      String receiverId, String senderId, String chatId, File imageFile) async {
    if (receiverId.isEmpty || senderId.isEmpty || chatId.isEmpty) {
      return;
    }

    // Save the image file locally
    Directory appDir = await getApplicationDocumentsDirectory();
    String imagePath = join(appDir.path, '${UniqueKey()}.jpg');
    await imageFile.copy(imagePath);

    final db = await database;
    await db.insert(
      'messages',
      {
        'receiver_id': receiverId,
        'sender_id': senderId,
        'timestamp': DateTime.now().millisecondsSinceEpoch,
        'message': imagePath,
        'chat_id': chatId,
      },
    );
  }
}
