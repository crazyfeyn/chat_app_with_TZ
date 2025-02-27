import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';

abstract class AuthRepositories {
  Future<Either<Failure, void>> register(
    String password,
    String email,
  );
  Future<Either<Failure, void>> logIn(String password, String email);
  Future<Either<Failure, UserModel>> getUserByEmail(String email);
}
