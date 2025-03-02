// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String email) logIn,
    required TResult Function(String password, String email) register,
    required TResult Function(String email) getUserByEmail,
    required TResult Function(String email) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String email)? logIn,
    TResult? Function(String password, String email)? register,
    TResult? Function(String email)? getUserByEmail,
    TResult? Function(String email)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String email)? logIn,
    TResult Function(String password, String email)? register,
    TResult Function(String email)? getUserByEmail,
    TResult Function(String email)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_log value) logIn,
    required TResult Function(_reg value) register,
    required TResult Function(_getUserByEmail value) getUserByEmail,
    required TResult Function(_logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_log value)? logIn,
    TResult? Function(_reg value)? register,
    TResult? Function(_getUserByEmail value)? getUserByEmail,
    TResult? Function(_logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_log value)? logIn,
    TResult Function(_reg value)? register,
    TResult Function(_getUserByEmail value)? getUserByEmail,
    TResult Function(_logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$logImplCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$logImplCopyWith(_$logImpl value, $Res Function(_$logImpl) then) =
      __$$logImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String email});
}

/// @nodoc
class __$$logImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$logImpl>
    implements _$$logImplCopyWith<$Res> {
  __$$logImplCopyWithImpl(_$logImpl _value, $Res Function(_$logImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$logImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$logImpl implements _log {
  const _$logImpl(this.password, this.email);

  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.logIn(password: $password, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$logImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$logImplCopyWith<_$logImpl> get copyWith =>
      __$$logImplCopyWithImpl<_$logImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String email) logIn,
    required TResult Function(String password, String email) register,
    required TResult Function(String email) getUserByEmail,
    required TResult Function(String email) logout,
  }) {
    return logIn(password, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String email)? logIn,
    TResult? Function(String password, String email)? register,
    TResult? Function(String email)? getUserByEmail,
    TResult? Function(String email)? logout,
  }) {
    return logIn?.call(password, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String email)? logIn,
    TResult Function(String password, String email)? register,
    TResult Function(String email)? getUserByEmail,
    TResult Function(String email)? logout,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(password, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_log value) logIn,
    required TResult Function(_reg value) register,
    required TResult Function(_getUserByEmail value) getUserByEmail,
    required TResult Function(_logout value) logout,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_log value)? logIn,
    TResult? Function(_reg value)? register,
    TResult? Function(_getUserByEmail value)? getUserByEmail,
    TResult? Function(_logout value)? logout,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_log value)? logIn,
    TResult Function(_reg value)? register,
    TResult Function(_getUserByEmail value)? getUserByEmail,
    TResult Function(_logout value)? logout,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _log implements AuthEvent {
  const factory _log(final String password, final String email) = _$logImpl;

  String get password;
  @override
  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$logImplCopyWith<_$logImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$regImplCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$regImplCopyWith(_$regImpl value, $Res Function(_$regImpl) then) =
      __$$regImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String email});
}

/// @nodoc
class __$$regImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$regImpl>
    implements _$$regImplCopyWith<$Res> {
  __$$regImplCopyWithImpl(_$regImpl _value, $Res Function(_$regImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$regImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$regImpl implements _reg {
  const _$regImpl(this.password, this.email);

  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.register(password: $password, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$regImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$regImplCopyWith<_$regImpl> get copyWith =>
      __$$regImplCopyWithImpl<_$regImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String email) logIn,
    required TResult Function(String password, String email) register,
    required TResult Function(String email) getUserByEmail,
    required TResult Function(String email) logout,
  }) {
    return register(password, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String email)? logIn,
    TResult? Function(String password, String email)? register,
    TResult? Function(String email)? getUserByEmail,
    TResult? Function(String email)? logout,
  }) {
    return register?.call(password, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String email)? logIn,
    TResult Function(String password, String email)? register,
    TResult Function(String email)? getUserByEmail,
    TResult Function(String email)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(password, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_log value) logIn,
    required TResult Function(_reg value) register,
    required TResult Function(_getUserByEmail value) getUserByEmail,
    required TResult Function(_logout value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_log value)? logIn,
    TResult? Function(_reg value)? register,
    TResult? Function(_getUserByEmail value)? getUserByEmail,
    TResult? Function(_logout value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_log value)? logIn,
    TResult Function(_reg value)? register,
    TResult Function(_getUserByEmail value)? getUserByEmail,
    TResult Function(_logout value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _reg implements AuthEvent {
  const factory _reg(final String password, final String email) = _$regImpl;

  String get password;
  @override
  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$regImplCopyWith<_$regImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getUserByEmailImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$getUserByEmailImplCopyWith(_$getUserByEmailImpl value,
          $Res Function(_$getUserByEmailImpl) then) =
      __$$getUserByEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$getUserByEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$getUserByEmailImpl>
    implements _$$getUserByEmailImplCopyWith<$Res> {
  __$$getUserByEmailImplCopyWithImpl(
      _$getUserByEmailImpl _value, $Res Function(_$getUserByEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$getUserByEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getUserByEmailImpl implements _getUserByEmail {
  const _$getUserByEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.getUserByEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getUserByEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getUserByEmailImplCopyWith<_$getUserByEmailImpl> get copyWith =>
      __$$getUserByEmailImplCopyWithImpl<_$getUserByEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String email) logIn,
    required TResult Function(String password, String email) register,
    required TResult Function(String email) getUserByEmail,
    required TResult Function(String email) logout,
  }) {
    return getUserByEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String email)? logIn,
    TResult? Function(String password, String email)? register,
    TResult? Function(String email)? getUserByEmail,
    TResult? Function(String email)? logout,
  }) {
    return getUserByEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String email)? logIn,
    TResult Function(String password, String email)? register,
    TResult Function(String email)? getUserByEmail,
    TResult Function(String email)? logout,
    required TResult orElse(),
  }) {
    if (getUserByEmail != null) {
      return getUserByEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_log value) logIn,
    required TResult Function(_reg value) register,
    required TResult Function(_getUserByEmail value) getUserByEmail,
    required TResult Function(_logout value) logout,
  }) {
    return getUserByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_log value)? logIn,
    TResult? Function(_reg value)? register,
    TResult? Function(_getUserByEmail value)? getUserByEmail,
    TResult? Function(_logout value)? logout,
  }) {
    return getUserByEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_log value)? logIn,
    TResult Function(_reg value)? register,
    TResult Function(_getUserByEmail value)? getUserByEmail,
    TResult Function(_logout value)? logout,
    required TResult orElse(),
  }) {
    if (getUserByEmail != null) {
      return getUserByEmail(this);
    }
    return orElse();
  }
}

abstract class _getUserByEmail implements AuthEvent {
  const factory _getUserByEmail(final String email) = _$getUserByEmailImpl;

  @override
  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getUserByEmailImplCopyWith<_$getUserByEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$logoutImplCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$logoutImplCopyWith(
          _$logoutImpl value, $Res Function(_$logoutImpl) then) =
      __$$logoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$logoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$logoutImpl>
    implements _$$logoutImplCopyWith<$Res> {
  __$$logoutImplCopyWithImpl(
      _$logoutImpl _value, $Res Function(_$logoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$logoutImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$logoutImpl implements _logout {
  const _$logoutImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.logout(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$logoutImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$logoutImplCopyWith<_$logoutImpl> get copyWith =>
      __$$logoutImplCopyWithImpl<_$logoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String email) logIn,
    required TResult Function(String password, String email) register,
    required TResult Function(String email) getUserByEmail,
    required TResult Function(String email) logout,
  }) {
    return logout(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String password, String email)? logIn,
    TResult? Function(String password, String email)? register,
    TResult? Function(String email)? getUserByEmail,
    TResult? Function(String email)? logout,
  }) {
    return logout?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String email)? logIn,
    TResult Function(String password, String email)? register,
    TResult Function(String email)? getUserByEmail,
    TResult Function(String email)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_log value) logIn,
    required TResult Function(_reg value) register,
    required TResult Function(_getUserByEmail value) getUserByEmail,
    required TResult Function(_logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_log value)? logIn,
    TResult? Function(_reg value)? register,
    TResult? Function(_getUserByEmail value)? getUserByEmail,
    TResult? Function(_logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_log value)? logIn,
    TResult Function(_reg value)? register,
    TResult Function(_getUserByEmail value)? getUserByEmail,
    TResult Function(_logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _logout implements AuthEvent {
  const factory _logout(final String email) = _$logoutImpl;

  @override
  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$logoutImplCopyWith<_$logoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  Status get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserModel? get user => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({Status status, String? message, UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String? message, UserModel? user});

  @override
  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl({this.status = Status.initial, this.message, this.user});

  @override
  @JsonKey()
  final Status status;
  @override
  final String? message;
  @override
  final UserModel? user;

  @override
  String toString() {
    return 'AuthState(status: $status, message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final Status status,
      final String? message,
      final UserModel? user}) = _$AuthStateImpl;

  @override
  Status get status;
  @override
  String? get message;
  @override
  UserModel? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
