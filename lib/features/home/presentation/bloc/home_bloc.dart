import 'package:flutter_application_1/core/constants/app_constants.dart';
import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/features/home/data/model/chat_message_model.dart';
import 'package:flutter_application_1/features/home/domain/usecase/add_user_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/get_all_user_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/get_chat_messages_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/send_image_message_usecase.dart';
import 'package:flutter_application_1/features/home/domain/usecase/start_new_chat_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AddUserUsecase addUserUsecase;
  final GetAllUsecase getAllUsecase;
  final GetChatMessagesUsecase getChatMessagesUsecase;
  final SendImageMessageUsecase sendImageMessageUsecase;
  final StartNewChatUsecase startNewChatUsecase;

  HomeBloc({
    required this.addUserUsecase,
    required this.getAllUsecase,
    required this.getChatMessagesUsecase,
    required this.sendImageMessageUsecase,
    required this.startNewChatUsecase,
  }) : super(HomeState()) {
    on<_addUser>(_addUserFunc);
    on<_getAllUser>(_getAllUserFunc);
    on<_getChatMessages>(_getChatMessagesFunc);
    on<_sendImageMessage>(_sendImageMessageFunc);
    on<_startNewChat>(_startNewChatFunc);
  }

  Future<void> _addUserFunc(_addUser event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await addUserUsecase(event.userModel);
    result.fold(
      (failure) => emit(state.copyWith(
        status: Status.error,
        errorMessage: 'Something went wrong',
      )),
      (success) => emit(state.copyWith(
        status: Status.success,
      )),
    );
  }

  Future<void> _getAllUserFunc(
      _getAllUser event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await getAllUsecase(null);
    result.fold(
      (failure) => emit(state.copyWith(
        status: Status.error,
        errorMessage: 'Failed to fetch users',
      )),
      (users) => emit(state.copyWith(
        status: Status.success,
        users: users,
      )),
    );
  }

  Future<void> _getChatMessagesFunc(
      _getChatMessages event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final result = await getChatMessagesUsecase(event.usercaseParam);

    result.fold(
      (failure) => emit(state.copyWith(
        status: Status.error,
        errorMessage: 'Failed to fetch messages',
      )),
      (messagesJsonList) {
        try {
          if (messagesJsonList is List<ChatMessageModel>) {
            emit(state.copyWith(
              status: Status.success,
              messages: messagesJsonList,
            ));
          } else {
            throw Exception('Invalid message format received');
          }
        } catch (e) {
          emit(state.copyWith(
            status: Status.error,
            errorMessage: 'Data parsing error: ${e.toString()}',
          ));
        }
      },
    );
  }

  Future<void> _sendImageMessageFunc(
      _sendImageMessage event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final result = await sendImageMessageUsecase(event.sendImageMessageParam);
    result.fold(
      (failure) => emit(state.copyWith(
        status: Status.error,
        errorMessage: 'Failed to send image message',
      )),
      (success) => emit(state.copyWith(
        status: Status.success,
      )),
    );
  }

  Future<void> _startNewChatFunc(
      _startNewChat event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));

    try {
      final result = await startNewChatUsecase(event.startNewChatParam);

      result.fold(
        (failure) {
          emit(state.copyWith(
            status: Status.error,
            errorMessage: 'Failed to start new chat: ${failure.toString()}',
          ));
        },
        (success) {
          emit(state.copyWith(
            status: Status.success,
          ));

          final params = UsercaseParam(
            receiverEmail: event.startNewChatParam.receiverEmail,
            senderEmail: event.startNewChatParam.senderEmail,
          );
          add(_getChatMessages(params));
        },
      );
    } catch (e) {
      print('Unexpected error in _startNewChatFunc: $e');
      emit(state.copyWith(
        status: Status.error,
        errorMessage: 'Exception: ${e.toString()}',
      ));
    }
  }
}
