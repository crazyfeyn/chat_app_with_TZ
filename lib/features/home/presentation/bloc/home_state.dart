part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(Status.initial) Status status,
    @Default([]) List<UserModel> users,
    @Default([]) List<ChatMessageModel> messages,
    String? errorMessage,
  }) = _HomeState;
}
