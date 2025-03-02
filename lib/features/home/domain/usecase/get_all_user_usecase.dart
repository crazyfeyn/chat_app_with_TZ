import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/home/domain/repositories/home_repositories.dart';

class GetAllUsecase extends Usecase {
  HomeRepositories homeRepositories;
  GetAllUsecase({required this.homeRepositories});
  @override
  Future<Either<Failure, dynamic>> call(params) {
    return homeRepositories.getAllUsers();
  }
}
