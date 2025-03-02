import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/home/domain/repositories/home_repositories.dart';

class SendImageMessageUsecase extends Usecase<void, SendImageMessageParam> {
  HomeRepositories homeRepositories;
  SendImageMessageUsecase({required this.homeRepositories});
  @override
  Future<Either<Failure, dynamic>> call(SendImageMessageParam params) {
    return homeRepositories.sendImageMessage(
        params.receiverId, params.senderId, params.imageFile);
  }
}

class SendImageMessageParam {
  final String receiverId;
  final String senderId;
  final File imageFile;

  SendImageMessageParam(
      {required this.receiverId,
      required this.senderId,
      required this.imageFile});
}
