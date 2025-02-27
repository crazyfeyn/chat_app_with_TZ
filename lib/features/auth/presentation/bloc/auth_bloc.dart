import 'package:flutter_application_1/features/auth/data/model/user_model.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/get_user_by_email.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_application_1/core/constants/app_constants.dart';
import 'package:flutter_application_1/core/error/failure.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/login_usecase.dart';
import 'package:flutter_application_1/features/auth/domain/usecase/register_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_events.dart';
part 'auth_states.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUserUsecase;
  final RegisterUsecase registerUserUsecase;
  final GetUserByEmailUsecase getUserByEmailUsecase;

  AuthBloc({
    required this.loginUserUsecase,
    required this.registerUserUsecase,
    required this.getUserByEmailUsecase,
  }) : super(AuthState()) {
    on<_log>(_logIn);
    on<_reg>(_register);
    on<_getUserByEmail>(_getUserByEmailFunc);
  }

  Future<void> _logIn(_log event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final response = await loginUserUsecase.call(
      LoginParams(email: event.email, password: event.password),
    );

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            status: Status.error,
            message: failure is ServerFailure
                ? failure.message
                : 'An unknown error occurred',
          ),
        );
      },
      (success) {
        emit(state.copyWith(
            status: Status.success, message: 'Login successful'));
      },
    );
  }

  Future<void> _register(_reg event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final response = await registerUserUsecase.call(
      RegisterParams(
        email: event.email,
        password: event.password,
      ),
    );

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            status: Status.error,
            message: failure is ServerFailure
                ? failure.message
                : 'An unknown error occurred',
          ),
        );
      },
      (success) {
        emit(state.copyWith(
            status: Status.success, message: 'Registration successful'));
      },
    );
  }

  Future<void> _getUserByEmailFunc(
      _getUserByEmail event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final response = await getUserByEmailUsecase.call(event.email);
    print(response);

    response.fold(
      (failure) {
        emit(
          state.copyWith(
            status: Status.error,
            message: failure is ServerFailure
                ? failure.message
                : 'An unknown error occurred',
          ),
        );
      },
      (user) {
        emit(
          state.copyWith(
            status: Status.userFetched,
            message: 'User fetched successfully',
            user: user,
          ),
        );
      },
    );
  }
}
