import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/features/home/data/model/chat_message_model.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseService {
  // Singleton pattern to ensure a single instance of the database
  static final DatabaseService _instance = DatabaseService._internal();
  factory DatabaseService() => _instance;
  static Database? _database;

  DatabaseService._internal();

  // Getter for the database instance
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Initialize the database
  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'app_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // Create tables in the database
  Future<void> _onCreate(Database db, int version) async {
    // Create 'users' table
    await db.execute('''
      CREATE TABLE users(
        id TEXT PRIMARY KEY,
        email TEXT UNIQUE,
        password TEXT
      )
    ''');

    // Create 'messages' table
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

  // Add a new user to the 'users' table

  Future<int> createUser(String email, String password) async {
    final db = await database;
    return await db.insert(
      'users',
      {'email': email, 'password': password},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Fetch a user by email
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

  // Get all users from the 'users' table
  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await database;
    return await db.query('users');
  }

  // Add or update a user in the 'users' table
  Future<void> addNewUser(UserModel newUser) async {
    final db = await database;
    final existingUser = await fetchUserByEmail(newUser.email);

    if (existingUser != null) {
      // Update the user if they already exist
      await db.update(
        'users',
        {'id': newUser.id},
        where: 'email = ?',
        whereArgs: [newUser.email],
      );
    } else {
      // Insert the user if they don't exist
      await db.insert(
        'users',
        newUser.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  // Start a new chat by adding a message to the 'messages' table
  Future<void> startChat(
      String receiverId, String senderId, String chatId, String message) async {
    if (receiverId.isEmpty ||
        senderId.isEmpty ||
        chatId.isEmpty ||
        message.isEmpty) {
      return;
    }

    final db = await database;
    final chatMessage = ChatMessageModel(
      receiverId: receiverId,
      senderId: senderId,
      timestamp: DateTime.now().millisecondsSinceEpoch,
      message: message,
      chatId: chatId,
    );

    await db.insert(
      'messages',
      chatMessage.toMap(),
    );
  }

  // Get active chats for a specific chat ID
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

  // Start an image message by saving the image and adding a record to the 'messages' table
  Future<void> startImageMessage(
      String receiverId, String senderId, String chatId, File imageFile) async {
    if (receiverId.isEmpty || senderId.isEmpty || chatId.isEmpty) {
      return;
    }

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

  // Get a user by email and return a UserModel object
  Future<UserModel?> getUserByEmail(String email) async {
    final userMap = await fetchUserByEmail(email);
    if (userMap != null) {
      return UserModel.fromJson(userMap);
    }
    return null;
  }
}
