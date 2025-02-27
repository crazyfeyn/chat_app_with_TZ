part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.addUser(UserModel userModel) = _addUser;
  const factory HomeEvent.getAllUser() = _getAllUser;
  const factory HomeEvent.getChatMessages(UsercaseParam usercaseParam) =
      _getChatMessages;
  const factory HomeEvent.sendImageMessage(
      SendImageMessageParam sendImageMessageParam) = _sendImageMessage;
  const factory HomeEvent.startNewChat(StartNewChatParam startNewChatParam) =
      _startNewChat;
}
