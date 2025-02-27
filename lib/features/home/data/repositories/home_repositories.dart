import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/features/auth/data/datasources/auth_datasources.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
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

  // @override
  // Future<Either<Failure, List<UserModel>>> getAllUsers() async {
  //   try {
  //     final userMaps = await databaseService.getUsers();
  //     List<UserModel> users =
  //         userMaps.map((map) => UserModel.fromMap(map)).toList();
  //     return Right(users);
  //   } catch (e) {
  //     return Left(CacheFailure());
  //   }
  // }

  @override
  Future<Either<Failure, List<Map<String, dynamic>>>> getChatMessages(
      String userEmail1, String userEmail2) {
    // TODO: implement getChatMessages
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> sendImageMessage(
      String receiverId, String senderId, File imageFile) {
    // TODO: implement sendImageMessage
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> startNewChat(
      String receiverId, String senderId, String message) {
    // TODO: implement startNewChat
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<UserModel>>> getAllUsers() {
    // TODO: implement getAllUsers
    throw UnimplementedError();
  }
}


// Future<Either<Failure, List<UserModel>>> getAllUsers() async {
//     try {
//       final userMaps = await _databaseService.getUsers();
//       List<UserModel> users = userMaps.map((map) => UserModel.fromMap(map)).toList();
//       return Right(users);
//     } catch (e) {
//       return Left(DatabaseFailure('Failed to get users: ${e.toString()}'));
//     }
//   }

//   /// Starts a new chat conversation
//   Future<Either<Failure, void>> startNewChat(String receiverId, String senderId, String message) async {
//     try {
//       // Create chat ID by combining and sorting IDs
//       List<String> sortedIds = [receiverId, senderId]..sort();
//       String chatId = sortedIds.join('');
      
//       await _databaseService.startChat(receiverId, senderId, chatId, message);
//       return const Right(null);
//     } catch (e) {
//       return Left(DatabaseFailure('Failed to start chat: ${e.toString()}'));
//     }
//   }

//   /// Retrieves chat messages between two users
//   Future<Either<Failure, List<Map<String, dynamic>>>> getChatMessages(String userEmail1, String userEmail2) async {
//     try {
//       final messages = await _databaseService.getActiveChats(userEmail1, userEmail2);
//       return Right(messages);
//     } catch (e) {
//       return Left(DatabaseFailure('Failed to get chat messages: ${e.toString()}'));
//     }
//   }

//   /// Sends an image message
//   Future<Either<Failure, void>> sendImageMessage(String receiverId, String senderId, File imageFile) async {
//     try {
//       // Create chat ID by combining and sorting IDs
//       List<String> sortedIds = [receiverId, senderId]..sort();
//       String chatId = sortedIds.join('');
      
//       await _databaseService.startImageMessage(receiverId, senderId, chatId, imageFile);
//       return const Right(null);
//     } catch (e) {
//       return Left(DatabaseFailure('Failed to send image message: ${e.toString()}'));
//     }
//   }

//   /// Adds a new user to the database
//   Future<Either<Failure, void>> addUser(UserModel user) async {
//     try {
//       await _databaseService.addNewUser(user);
//       return const Right(null);
//     } catch (e) {
//       return Left(DatabaseFailure('Failed to add user: ${e.toString()}'));
//     }
//   }