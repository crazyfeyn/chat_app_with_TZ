import 'package:flutter_application_1/features/auth/data/datasources/datasources.dart';
import 'package:flutter_application_1/features/auth/data/repositories/auth_repositories.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/get_user_by_email.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/login_usecase.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/register_usecase.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_application_1/features/home/data/repositories/home_repositories.dart';
import 'package:flutter_application_1/features/home/domain/usecase/add_user_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/get_all_user_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/get_chat_messages_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/send_image_message_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/start_new_chat_usecase.dart';
import 'package:flutter_application_1/features/home/presentation/bloc/home_bloc.dart';
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
  sl.registerFactory(() =>
      GetUserByEmailUsecase(authRepositories: sl<AuthRepositoriesImpl>()));

  sl.registerLazySingleton(
      () => HomeRepositoriesImpl(databaseService: sl<DatabaseService>()));
  sl.registerFactory(
      () => GetAllUsecase(homeRepositories: sl<HomeRepositoriesImpl>()));
  sl.registerFactory(() =>
      GetChatMessagesUsecase(homeRepositories: sl<HomeRepositoriesImpl>()));
  sl.registerFactory(() =>
      SendImageMessageUsecase(homeRepositories: sl<HomeRepositoriesImpl>()));
  sl.registerFactory(
      () => StartNewChatUsecase(homeRepositories: sl<HomeRepositoriesImpl>()));
  sl.registerFactory(
      () => AddUserUsecase(homeRepositories: sl<HomeRepositoriesImpl>()));

  sl.registerFactory(() => AuthBloc(
        loginUserUsecase: sl<LoginUsecase>(),
        registerUserUsecase: sl<RegisterUsecase>(),
        getUserByEmailUsecase: sl<GetUserByEmailUsecase>(),
      ));

  sl.registerFactory(() => HomeBloc(
      addUserUsecase: sl<AddUserUsecase>(),
      getAllUsecase: sl<GetAllUsecase>(),
      getChatMessagesUsecase: sl<GetChatMessagesUsecase>(),
      sendImageMessageUsecase: sl<SendImageMessageUsecase>(),
      startNewChatUsecase: sl<StartNewChatUsecase>()));
}
