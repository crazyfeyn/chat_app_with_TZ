import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/features/auth/data/datasources/auth_datasources.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repositories.dart';

class AuthRepositoriesImpl extends AuthRepositories {
  final DatabaseService authDatasources;
  AuthRepositoriesImpl({
    required this.authDatasources,
  });

  @override
  Future<Either<Failure, void>> logIn(String password, String email) {
    return _logIn(password, () => authDatasources.fetchUserByEmail(email));
  }

  @override
  Future<Either<Failure, void>> register(String password, String email) {
    return _register(() => authDatasources.createUser(email, password));
  }

  Future<Either<Failure, void>> _logIn(
    String password,
    Future<Map<String, dynamic>?> Function() log,
  ) async {
    try {
      final user = await log();
      if (user != null && user['password'] == password) {
        return const Right(null);
      } else {
        return Left(ServerFailure(message: 'Incorrect email or password'));
      }
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  Future<Either<Failure, void>> _register(
      Future<int> Function() register) async {
    try {
      await register();
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
