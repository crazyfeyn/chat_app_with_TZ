import 'package:flutter_application_1/features/auth/data/datasources/auth_datasources.dart';
import 'package:flutter_application_1/features/auth/data/repositories/repositories.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/login_usecase.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/register_usecase.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.asNewInstance();
Future<void> init() async {
  sl.registerLazySingleton<DatabaseService>(() => DatabaseService());

  sl.registerFactory(
      () => AuthRepositoriesImpl(authDatasources: sl<DatabaseService>()));
  sl.registerFactory(
      () => LoginUsecase(authRepositories: sl<AuthRepositoriesImpl>()));

  sl.registerFactory(
      () => RegisterUsecase(authRepositories: sl<AuthRepositoriesImpl>()));

  sl.registerFactory(() => AuthBloc(
        loginUserUsecase: sl<LoginUsecase>(),
        registerUserUsecase: sl<RegisterUsecase>(),
      ));
}
