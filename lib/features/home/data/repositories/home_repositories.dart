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

  @override
  Future<Either<Failure, List<UserModel>>> getAllUsers() async {
    try {
      final userMaps = await databaseService.getUsers();
      List<UserModel> users =
          userMaps.map((map) => UserModel.fromJson(map)).toList();
      return Right(users);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, List<Map<String, dynamic>>>> getChatMessages(
      String userEmail1, String userEmail2) async {
    try {
      final messages =
          await databaseService.getActiveChats(userEmail1, userEmail2);
      return Right(messages);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> sendImageMessage(
      String receiverId, String senderId, File imageFile) async {
    try {
      List<String> sortedIds = [receiverId, senderId]..sort();
      String chatId = sortedIds.join('');

      await databaseService.startImageMessage(
          receiverId, senderId, chatId, imageFile);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, void>> startNewChat(
      String receiverId, String senderId, String message) async {
    try {
      List<String> sortedIds = [receiverId, senderId]..sort();
      String chatId = sortedIds.join('');

      await databaseService.startChat(receiverId, senderId, chatId, message);
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
