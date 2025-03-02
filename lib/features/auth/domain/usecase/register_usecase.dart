import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repositories.dart';

class RegisterUsecase extends Usecase<void, RegisterParams> {
  AuthRepositories authRepositories;
  RegisterUsecase({
    required this.authRepositories,
  });

  @override
  Future<Either<Failure, void>> call(RegisterParams params) {
    return authRepositories.register(params.password, params.email);
  }
}

class RegisterParams {
  String email;
  String password;
  RegisterParams({
    required this.email,
    required this.password,
  });
}
