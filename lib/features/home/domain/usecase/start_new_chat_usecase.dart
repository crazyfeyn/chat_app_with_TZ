import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/home/domain/repositories/home_repositories.dart';

class StartNewChatUsecase extends Usecase<void, StartNewChatParam> {
  HomeRepositories homeRepositories;
  StartNewChatUsecase({required this.homeRepositories});
  @override
  Future<Either<Failure, dynamic>> call(params) {
    return homeRepositories.startNewChat(
        params.receiverId, params.senderId, params.message);
  }
}

class StartNewChatParam {
  final String receiverId;
  final String senderId;
  final String message;

  StartNewChatParam({
    required this.receiverId,
    required this.senderId,
    required this.message,
  });
}
