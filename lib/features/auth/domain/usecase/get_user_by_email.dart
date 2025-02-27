import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repositories.dart';

class GetUserByEmailUsecase extends Usecase<void, dynamic> {
  AuthRepositories authRepositories;
  GetUserByEmailUsecase({
    required this.authRepositories,
  });

  @override
  Future<Either<Failure, dynamic>> call(params) {
    return authRepositories.getUserByEmail(params);
  }
}
