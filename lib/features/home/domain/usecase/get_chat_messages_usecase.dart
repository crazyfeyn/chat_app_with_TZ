import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/home/domain/repositories/home_repositories.dart';

class GetChatMessagesUsecase extends Usecase<void, UsercaseParam> {
  HomeRepositories homeRepositories;
  GetChatMessagesUsecase({required this.homeRepositories});
  @override
  Future<Either<Failure, dynamic>> call(UsercaseParam params) {
    return homeRepositories.getChatMessages(
        params.receiverEmail, params.senderEmail);
  }
}

class UsercaseParam {
  String receiverEmail;
  String senderEmail;

  UsercaseParam({required this.receiverEmail, required this.senderEmail});
}
