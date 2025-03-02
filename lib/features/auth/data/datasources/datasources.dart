import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/features/home/data/model/chat_message_model.dart';
import 'package:sqflite/sqflite.dart';
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
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, 'chat_app.db');
    ('Initializing database at: $path');
    return await openDatabase(
      path,
      version: 2,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    ('Creating users table...');
    await db.execute('''
    CREATE TABLE IF NOT EXISTS users(
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      email TEXT UNIQUE,
      password TEXT
    )
  ''');

    ('Creating messages table...');
    await db.execute('''
    CREATE TABLE IF NOT EXISTS messages(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      receiver_id INTEGER,
      sender_id INTEGER,
      timestamp INTEGER,
      message TEXT,
      chat_id TEXT
    )
  ''');
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    ('Upgrading database from $oldVersion to $newVersion');
    if (oldVersion < 2) {
      // Drop the old users table if it exists
      await db.execute('DROP TABLE IF EXISTS users');

      // Recreate the users table with the correct schema
      await db.execute('''
      CREATE TABLE IF NOT EXISTS users(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        email TEXT UNIQUE,
        password TEXT
      )
    ''');

      // Recreate the messages table
      await db.execute('''
      CREATE TABLE IF NOT EXISTS messages(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        receiver_id INTEGER,
        sender_id INTEGER,
        timestamp INTEGER,
        message TEXT,
        chat_id TEXT
      )
    ''');
    }
  }

  Future<void> clearUsers() async {
    final db = await database;
    ('Clearing users table...');
    await db.delete('users');
    ('Users table cleared');
  }

  Future<UserModel> createUser(String email, String password) async {
    final db = await database;
    ('Creating user with email: $email');

    try {
      final id = await db.insert(
        'users',
        {
          'email': email,
          'password': password,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      ('User created with ID: $id (Type: ${id.runtimeType})');
      if (id == null) {
        throw Exception('Failed to generate ID for user');
      }

      return UserModel(email: email, password: password, id: id);
    } catch (e) {
      ('Error creating user: $e');
      rethrow;
    }
  }

  Future<UserModel> addNewUser(UserModel user) async {
    final db = await database;
    try {
      // Only include email and password in the userMap
      final Map<String, dynamic> userMap = {
        'email': user.email,
        'password': user.password,
      };

      // Don't set the ID for new users - let the database generate it
      // Only set ID if it's a non-null value (for existing users)
      if (user.id != null) {
        userMap['id'] = user.id;
      }

      final id = await db.insert(
        'users',
        userMap,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      ('User added with ID: $id');

      // Return user with the correct ID (either existing or newly generated)
      return UserModel(id: id, email: user.email, password: user.password);
    } catch (e) {
      ('Error adding user: $e');
      rethrow;
    }
  }

  Future<UserModel?> getUserByEmail(String email) async {
    final db = await database;
    ('Fetching user by email: $email');

    try {
      final result = await db.query(
        'users',
        where: 'email = ?',
        whereArgs: [email],
        limit: 1,
      );

      ('Raw database result: $result');
      if (result.isNotEmpty) {
        final userMap = result.first;
        ('Retrieved User Data: $userMap');

        if (userMap['id'] == null) {
          throw Exception('User ID is null for email: $email');
        }

        return UserModel.fromJson(userMap);
      }
      return null;
    } catch (e) {
      ('Error fetching user: $e');
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await database;
    ('Fetching all users...');

    try {
      final users = await db.query(
        'users',
        columns: ['id', 'email', 'password'],
      );
      ('Fetched users: $users');
      return users;
    } catch (e) {
      ('Error fetching users: $e');
      rethrow;
    }
  }

  Future<void> startChat(
      String receiverId, String senderId, String chatId, String message) async {
    final db = await database;
    print('here');
    print(message);
    await db.insert('messages', {
      'receiver_id': int.parse(receiverId),
      'sender_id': int.parse(senderId),
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'message': message,
      'chat_id': chatId,
    });
  }

  Future<List<ChatMessageModel>> getActiveChats(
      String email1, String email2) async {
    try {
      final user1 = await getUserByEmail(email1);
      final user2 = await getUserByEmail(email2);

      ('User2: ${user2?.toJson()}');

      if (user1 == null || user2 == null) {
        ('One or both users not found');
        return [];
      }

      final sortedIds = [user1.id, user2.id]..sort();
      final chatId = sortedIds.join();
      ('ChatId: $chatId');

      final db = await database;
      final rawMessages = await db.query(
        'messages',
        where: 'chat_id = ?',
        whereArgs: [chatId],
        orderBy: 'timestamp ASC',
      );

      ('Raw messages from DB: $rawMessages');
      ('Raw messages type: ${rawMessages.runtimeType}');

      List<ChatMessageModel> messages = [];
      for (var map in rawMessages) {
        ('Converting message: $map');
        try {
          final model = ChatMessageModel.fromJson(map);
          ('Converted to model: ${model.toJson()}');
          messages.add(model);
        } catch (e) {
          ('Error converting message: $e');
        }
      }

      ('Converted messages: $messages');
      ('Converted messages type: ${messages.runtimeType}');
      ('First message type (if exists): ${messages.isNotEmpty ? messages.first.runtimeType : "N/A"}');

      return messages;
    } catch (e) {
      ('Error in getActiveChats: $e');
      return [];
    }
  }

  // Add a method to send messages
  Future<int> sendMessage(ChatMessageModel message) async {
    final db = await database;

    try {
      final int messageId = await db.insert(
        'messages',
        {
          'receiver_id': int.parse(message.receiverId),
          'sender_id': int.parse(message.senderId),
          'timestamp': message.timestamp,
          'message': message.message,
          'chat_id': message.chatId,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      ('Message sent with ID: $messageId');
      return messageId;
    } catch (e) {
      ('Error sending message: $e');
      rethrow;
    }
  }

  // Add a method to get all chats for a user
  Future<List<Map<String, dynamic>>> getUserChats(int userId) async {
    final db = await database;

    try {
      // Get distinct chat IDs where the user is either sender or receiver
      final List<Map<String, dynamic>> chatIds = await db.rawQuery('''
        SELECT DISTINCT chat_id FROM messages 
        WHERE sender_id = ? OR receiver_id = ?
        ORDER BY timestamp DESC
      ''', [userId, userId]);

      return chatIds;
    } catch (e) {
      ('Error fetching user chats: $e');
      rethrow;
    }
  }

  // Get the last message for a chat
  Future<ChatMessageModel?> getLastMessage(String chatId) async {
    final db = await database;

    try {
      final List<Map<String, dynamic>> result = await db.query(
        'messages',
        where: 'chat_id = ?',
        whereArgs: [chatId],
        orderBy: 'timestamp DESC',
        limit: 1,
      );

      if (result.isNotEmpty) {
        return ChatMessageModel.fromJson(result.first);
      }
      return null;
    } catch (e) {
      ('Error fetching last message: $e');
      return null;
    }
  }
}
