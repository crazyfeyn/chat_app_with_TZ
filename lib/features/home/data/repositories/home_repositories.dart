import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/features/auth/data/datasources/datasources.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/features/home/data/model/chat_message_model.dart';
import 'package:flutter_application_1/features/home/domain/repositories/home_repositories.dart';

class HomeRepositoriesImpl implements HomeRepositories {
  final DatabaseService databaseService;

  HomeRepositoriesImpl({required this.databaseService});

  @override
  Future<Either<Failure, void>> addUser(UserModel user) async {
    try {
      await databaseService.addNewUser(user);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<UserModel>>> getAllUsers() async {
    try {
      final userMaps = await databaseService.getUsers();
      List<UserModel> users = userMaps.map((map) {
        return UserModel.fromJson(map);
      }).toList();
      return Right(users);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<ChatMessageModel>>> getChatMessages(
      String email1, String email2) async {
    try {
      final messages = await databaseService.getActiveChats(email1, email2);

      List<ChatMessageModel> typedMessages = [];
      for (var msg in messages) {
        typedMessages.add(msg);
      }

      debugPrint(
          'Repository: Final typedMessages count: ${typedMessages.length}');
      return Right(typedMessages);
    } catch (e) {
      debugPrint('Repository: Error in getChatMessages: $e');
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> sendImageMessage(
    String receiverId,
    String senderId,
    File imageFile,
  ) async {
    try {
      List<String> sortedIds = [receiverId, senderId]..sort();
      sortedIds.join();
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, dynamic>> startNewChat(
      String receiverId, String senderId, String message) async {
    try {
      final chatId = _generateChatId(senderId, receiverId);

      await databaseService.startChat(receiverId, senderId, chatId, message);

      return const Right(true);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

// Helper method to generate chatId
  String _generateChatId(String senderId, String receiverId) {
    final ids = [int.parse(senderId), int.parse(receiverId)]..sort();
    return ids.join();
  }
}
