import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';

abstract class HomeRepositories {
  Future<Either<Failure, List<UserModel>>> getAllUsers();
  Future<Either<Failure, void>> startNewChat(
      String receiverId, String senderId, String message);
  Future<Either<Failure, List<Map<String, dynamic>>>> getChatMessages(
      String userEmail1, String userEmail2);
  Future<Either<Failure, void>> sendImageMessage(
      String receiverId, String senderId, File imageFile);
  Future<Either<Failure, void>> addUser(UserModel user);
}
