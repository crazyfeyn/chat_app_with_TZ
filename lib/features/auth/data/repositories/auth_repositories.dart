import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/features/auth/data/datasources/datasources.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repositories.dart';

class AuthRepositoriesImpl extends AuthRepositories {
  final DatabaseService authDatasources;

  AuthRepositoriesImpl({required this.authDatasources});

  @override
  Future<Either<Failure, void>> logIn(String password, String email) async {
    try {
      await authDatasources.getUsers();
      final user = await authDatasources.getUserByEmail(email);

      if (user != null && user.password == password) {
        return const Right(null);
      }
      return Left(ServerFailure(
          message:
              'Entered email or password might ge wrong, please try again'));
    } catch (e) {
      return Left(ServerFailure(message: 'Login failed: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, void>> register(String password, String email) async {
    try {
      final existingUser = await authDatasources.getUserByEmail(email);
      if (existingUser != null) {
        return Left(ServerFailure(message: 'Email already exists'));
      }

      await authDatasources.createUser(email, password);
      return const Right(null);
    } catch (e) {
      return Left(
          ServerFailure(message: 'Registration failed: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, UserModel>> getUserByEmail(String email) async {
    try {
      final user = await authDatasources.getUserByEmail(email);
      return user != null ? Right(user) : Left(CacheFailure());
    } catch (e) {
      return Left(CacheFailure());
    }
  }
}
