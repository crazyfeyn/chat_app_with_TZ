part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn(String password, String email) = _log;
  const factory AuthEvent.register(String password, String email) = _reg;
  const factory AuthEvent.getUserByEmail(String email) = _getUserByEmail;
  const factory AuthEvent.logout(String email) = _logout;
}
