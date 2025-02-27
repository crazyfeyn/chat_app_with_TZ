part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(Status.initial) Status status,
    String? message,
  }) = _HomeState;
}
