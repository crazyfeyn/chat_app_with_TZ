import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repositories.dart';

class LoginUsecase extends Usecase<void, LoginParams> {
  AuthRepositories authRepositories;
  LoginUsecase({
    required this.authRepositories,
  });

  @override
  Future<Either<Failure, dynamic>> call(LoginParams params) {
    return authRepositories.logIn(params.password, params.email);
  }
}

class LoginParams {
  String email;
  String password;
  LoginParams({
    required this.email,
    required this.password,
  });
}
