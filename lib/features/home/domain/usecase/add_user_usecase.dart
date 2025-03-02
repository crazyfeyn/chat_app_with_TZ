import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/home/domain/repositories/home_repositories.dart';

class AddUserUsecase extends Usecase {
  HomeRepositories homeRepositories;
  AddUserUsecase({required this.homeRepositories});
  @override
  Future<Either<Failure, dynamic>> call(params) {
    return homeRepositories.addUser(params);
  }
}
