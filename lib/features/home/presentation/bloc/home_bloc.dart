import 'package:flutter_application_1/core/constants/app_constants.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/features/home/domain/usecase/add_user_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/get_all_user_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/get_chat_messages_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/send_image_message_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/start_new_chat_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AddUserUsecase addUserUsecase;
  final GetAllUsecase getAllUsecase;
  final GetChatMessagesUsecase getChatMessagesUsecase;
  final SendImageMessageParam sendImageMessageParam;
  final StartNewChatUsecase startNewChatUsecase;

  HomeBloc(
      {required this.addUserUsecase,
      required this.getAllUsecase,
      required this.getChatMessagesUsecase,
      required this.sendImageMessageParam,
      required this.startNewChatUsecase})
      : super(HomeState()) {
    // on<_addUser>(_addUserFunc);
    // on<_getAllUser>(_getAllUserFunc);
    // on<_getChatMessages>(_getChatMessagesFunc);
    // on<_sendImageMessage>(_sendImageMessageFunc);
    // on<_startNewChat>(_startNewChatFunc);
  }
}
