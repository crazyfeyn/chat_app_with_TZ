// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) addUser,
    required TResult Function() getAllUser,
    required TResult Function(UsercaseParam usercaseParam) getChatMessages,
    required TResult Function(SendImageMessageParam sendImageMessageParam)
        sendImageMessage,
    required TResult Function(StartNewChatParam startNewChatParam) startNewChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? addUser,
    TResult? Function()? getAllUser,
    TResult? Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult? Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult? Function(StartNewChatParam startNewChatParam)? startNewChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? addUser,
    TResult Function()? getAllUser,
    TResult Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult Function(StartNewChatParam startNewChatParam)? startNewChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addUser value) addUser,
    required TResult Function(_getAllUser value) getAllUser,
    required TResult Function(_getChatMessages value) getChatMessages,
    required TResult Function(_sendImageMessage value) sendImageMessage,
    required TResult Function(_startNewChat value) startNewChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_getAllUser value)? getAllUser,
    TResult? Function(_getChatMessages value)? getChatMessages,
    TResult? Function(_sendImageMessage value)? sendImageMessage,
    TResult? Function(_startNewChat value)? startNewChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addUser value)? addUser,
    TResult Function(_getAllUser value)? getAllUser,
    TResult Function(_getChatMessages value)? getChatMessages,
    TResult Function(_sendImageMessage value)? sendImageMessage,
    TResult Function(_startNewChat value)? startNewChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$addUserImplCopyWith<$Res> {
  factory _$$addUserImplCopyWith(
          _$addUserImpl value, $Res Function(_$addUserImpl) then) =
      __$$addUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$addUserImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$addUserImpl>
    implements _$$addUserImplCopyWith<$Res> {
  __$$addUserImplCopyWithImpl(
      _$addUserImpl _value, $Res Function(_$addUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$addUserImpl(
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$addUserImpl implements _addUser {
  const _$addUserImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'HomeEvent.addUser(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addUserImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addUserImplCopyWith<_$addUserImpl> get copyWith =>
      __$$addUserImplCopyWithImpl<_$addUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) addUser,
    required TResult Function() getAllUser,
    required TResult Function(UsercaseParam usercaseParam) getChatMessages,
    required TResult Function(SendImageMessageParam sendImageMessageParam)
        sendImageMessage,
    required TResult Function(StartNewChatParam startNewChatParam) startNewChat,
  }) {
    return addUser(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? addUser,
    TResult? Function()? getAllUser,
    TResult? Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult? Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult? Function(StartNewChatParam startNewChatParam)? startNewChat,
  }) {
    return addUser?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? addUser,
    TResult Function()? getAllUser,
    TResult Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult Function(StartNewChatParam startNewChatParam)? startNewChat,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addUser value) addUser,
    required TResult Function(_getAllUser value) getAllUser,
    required TResult Function(_getChatMessages value) getChatMessages,
    required TResult Function(_sendImageMessage value) sendImageMessage,
    required TResult Function(_startNewChat value) startNewChat,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_getAllUser value)? getAllUser,
    TResult? Function(_getChatMessages value)? getChatMessages,
    TResult? Function(_sendImageMessage value)? sendImageMessage,
    TResult? Function(_startNewChat value)? startNewChat,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addUser value)? addUser,
    TResult Function(_getAllUser value)? getAllUser,
    TResult Function(_getChatMessages value)? getChatMessages,
    TResult Function(_sendImageMessage value)? sendImageMessage,
    TResult Function(_startNewChat value)? startNewChat,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _addUser implements HomeEvent {
  const factory _addUser(final UserModel userModel) = _$addUserImpl;

  UserModel get userModel;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addUserImplCopyWith<_$addUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getAllUserImplCopyWith<$Res> {
  factory _$$getAllUserImplCopyWith(
          _$getAllUserImpl value, $Res Function(_$getAllUserImpl) then) =
      __$$getAllUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getAllUserImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getAllUserImpl>
    implements _$$getAllUserImplCopyWith<$Res> {
  __$$getAllUserImplCopyWithImpl(
      _$getAllUserImpl _value, $Res Function(_$getAllUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$getAllUserImpl implements _getAllUser {
  const _$getAllUserImpl();

  @override
  String toString() {
    return 'HomeEvent.getAllUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getAllUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) addUser,
    required TResult Function() getAllUser,
    required TResult Function(UsercaseParam usercaseParam) getChatMessages,
    required TResult Function(SendImageMessageParam sendImageMessageParam)
        sendImageMessage,
    required TResult Function(StartNewChatParam startNewChatParam) startNewChat,
  }) {
    return getAllUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? addUser,
    TResult? Function()? getAllUser,
    TResult? Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult? Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult? Function(StartNewChatParam startNewChatParam)? startNewChat,
  }) {
    return getAllUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? addUser,
    TResult Function()? getAllUser,
    TResult Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult Function(StartNewChatParam startNewChatParam)? startNewChat,
    required TResult orElse(),
  }) {
    if (getAllUser != null) {
      return getAllUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addUser value) addUser,
    required TResult Function(_getAllUser value) getAllUser,
    required TResult Function(_getChatMessages value) getChatMessages,
    required TResult Function(_sendImageMessage value) sendImageMessage,
    required TResult Function(_startNewChat value) startNewChat,
  }) {
    return getAllUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_getAllUser value)? getAllUser,
    TResult? Function(_getChatMessages value)? getChatMessages,
    TResult? Function(_sendImageMessage value)? sendImageMessage,
    TResult? Function(_startNewChat value)? startNewChat,
  }) {
    return getAllUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addUser value)? addUser,
    TResult Function(_getAllUser value)? getAllUser,
    TResult Function(_getChatMessages value)? getChatMessages,
    TResult Function(_sendImageMessage value)? sendImageMessage,
    TResult Function(_startNewChat value)? startNewChat,
    required TResult orElse(),
  }) {
    if (getAllUser != null) {
      return getAllUser(this);
    }
    return orElse();
  }
}

abstract class _getAllUser implements HomeEvent {
  const factory _getAllUser() = _$getAllUserImpl;
}

/// @nodoc
abstract class _$$getChatMessagesImplCopyWith<$Res> {
  factory _$$getChatMessagesImplCopyWith(_$getChatMessagesImpl value,
          $Res Function(_$getChatMessagesImpl) then) =
      __$$getChatMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsercaseParam usercaseParam});
}

/// @nodoc
class __$$getChatMessagesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$getChatMessagesImpl>
    implements _$$getChatMessagesImplCopyWith<$Res> {
  __$$getChatMessagesImplCopyWithImpl(
      _$getChatMessagesImpl _value, $Res Function(_$getChatMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usercaseParam = null,
  }) {
    return _then(_$getChatMessagesImpl(
      null == usercaseParam
          ? _value.usercaseParam
          : usercaseParam // ignore: cast_nullable_to_non_nullable
              as UsercaseParam,
    ));
  }
}

/// @nodoc

class _$getChatMessagesImpl implements _getChatMessages {
  const _$getChatMessagesImpl(this.usercaseParam);

  @override
  final UsercaseParam usercaseParam;

  @override
  String toString() {
    return 'HomeEvent.getChatMessages(usercaseParam: $usercaseParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getChatMessagesImpl &&
            (identical(other.usercaseParam, usercaseParam) ||
                other.usercaseParam == usercaseParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usercaseParam);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getChatMessagesImplCopyWith<_$getChatMessagesImpl> get copyWith =>
      __$$getChatMessagesImplCopyWithImpl<_$getChatMessagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) addUser,
    required TResult Function() getAllUser,
    required TResult Function(UsercaseParam usercaseParam) getChatMessages,
    required TResult Function(SendImageMessageParam sendImageMessageParam)
        sendImageMessage,
    required TResult Function(StartNewChatParam startNewChatParam) startNewChat,
  }) {
    return getChatMessages(usercaseParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? addUser,
    TResult? Function()? getAllUser,
    TResult? Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult? Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult? Function(StartNewChatParam startNewChatParam)? startNewChat,
  }) {
    return getChatMessages?.call(usercaseParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? addUser,
    TResult Function()? getAllUser,
    TResult Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult Function(StartNewChatParam startNewChatParam)? startNewChat,
    required TResult orElse(),
  }) {
    if (getChatMessages != null) {
      return getChatMessages(usercaseParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addUser value) addUser,
    required TResult Function(_getAllUser value) getAllUser,
    required TResult Function(_getChatMessages value) getChatMessages,
    required TResult Function(_sendImageMessage value) sendImageMessage,
    required TResult Function(_startNewChat value) startNewChat,
  }) {
    return getChatMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_getAllUser value)? getAllUser,
    TResult? Function(_getChatMessages value)? getChatMessages,
    TResult? Function(_sendImageMessage value)? sendImageMessage,
    TResult? Function(_startNewChat value)? startNewChat,
  }) {
    return getChatMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addUser value)? addUser,
    TResult Function(_getAllUser value)? getAllUser,
    TResult Function(_getChatMessages value)? getChatMessages,
    TResult Function(_sendImageMessage value)? sendImageMessage,
    TResult Function(_startNewChat value)? startNewChat,
    required TResult orElse(),
  }) {
    if (getChatMessages != null) {
      return getChatMessages(this);
    }
    return orElse();
  }
}

abstract class _getChatMessages implements HomeEvent {
  const factory _getChatMessages(final UsercaseParam usercaseParam) =
      _$getChatMessagesImpl;

  UsercaseParam get usercaseParam;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getChatMessagesImplCopyWith<_$getChatMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$sendImageMessageImplCopyWith<$Res> {
  factory _$$sendImageMessageImplCopyWith(_$sendImageMessageImpl value,
          $Res Function(_$sendImageMessageImpl) then) =
      __$$sendImageMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendImageMessageParam sendImageMessageParam});
}

/// @nodoc
class __$$sendImageMessageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$sendImageMessageImpl>
    implements _$$sendImageMessageImplCopyWith<$Res> {
  __$$sendImageMessageImplCopyWithImpl(_$sendImageMessageImpl _value,
      $Res Function(_$sendImageMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendImageMessageParam = null,
  }) {
    return _then(_$sendImageMessageImpl(
      null == sendImageMessageParam
          ? _value.sendImageMessageParam
          : sendImageMessageParam // ignore: cast_nullable_to_non_nullable
              as SendImageMessageParam,
    ));
  }
}

/// @nodoc

class _$sendImageMessageImpl implements _sendImageMessage {
  const _$sendImageMessageImpl(this.sendImageMessageParam);

  @override
  final SendImageMessageParam sendImageMessageParam;

  @override
  String toString() {
    return 'HomeEvent.sendImageMessage(sendImageMessageParam: $sendImageMessageParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sendImageMessageImpl &&
            (identical(other.sendImageMessageParam, sendImageMessageParam) ||
                other.sendImageMessageParam == sendImageMessageParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendImageMessageParam);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$sendImageMessageImplCopyWith<_$sendImageMessageImpl> get copyWith =>
      __$$sendImageMessageImplCopyWithImpl<_$sendImageMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) addUser,
    required TResult Function() getAllUser,
    required TResult Function(UsercaseParam usercaseParam) getChatMessages,
    required TResult Function(SendImageMessageParam sendImageMessageParam)
        sendImageMessage,
    required TResult Function(StartNewChatParam startNewChatParam) startNewChat,
  }) {
    return sendImageMessage(sendImageMessageParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? addUser,
    TResult? Function()? getAllUser,
    TResult? Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult? Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult? Function(StartNewChatParam startNewChatParam)? startNewChat,
  }) {
    return sendImageMessage?.call(sendImageMessageParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? addUser,
    TResult Function()? getAllUser,
    TResult Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult Function(StartNewChatParam startNewChatParam)? startNewChat,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(sendImageMessageParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addUser value) addUser,
    required TResult Function(_getAllUser value) getAllUser,
    required TResult Function(_getChatMessages value) getChatMessages,
    required TResult Function(_sendImageMessage value) sendImageMessage,
    required TResult Function(_startNewChat value) startNewChat,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_getAllUser value)? getAllUser,
    TResult? Function(_getChatMessages value)? getChatMessages,
    TResult? Function(_sendImageMessage value)? sendImageMessage,
    TResult? Function(_startNewChat value)? startNewChat,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addUser value)? addUser,
    TResult Function(_getAllUser value)? getAllUser,
    TResult Function(_getChatMessages value)? getChatMessages,
    TResult Function(_sendImageMessage value)? sendImageMessage,
    TResult Function(_startNewChat value)? startNewChat,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class _sendImageMessage implements HomeEvent {
  const factory _sendImageMessage(
          final SendImageMessageParam sendImageMessageParam) =
      _$sendImageMessageImpl;

  SendImageMessageParam get sendImageMessageParam;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$sendImageMessageImplCopyWith<_$sendImageMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$startNewChatImplCopyWith<$Res> {
  factory _$$startNewChatImplCopyWith(
          _$startNewChatImpl value, $Res Function(_$startNewChatImpl) then) =
      __$$startNewChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StartNewChatParam startNewChatParam});
}

/// @nodoc
class __$$startNewChatImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$startNewChatImpl>
    implements _$$startNewChatImplCopyWith<$Res> {
  __$$startNewChatImplCopyWithImpl(
      _$startNewChatImpl _value, $Res Function(_$startNewChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startNewChatParam = null,
  }) {
    return _then(_$startNewChatImpl(
      null == startNewChatParam
          ? _value.startNewChatParam
          : startNewChatParam // ignore: cast_nullable_to_non_nullable
              as StartNewChatParam,
    ));
  }
}

/// @nodoc

class _$startNewChatImpl implements _startNewChat {
  const _$startNewChatImpl(this.startNewChatParam);

  @override
  final StartNewChatParam startNewChatParam;

  @override
  String toString() {
    return 'HomeEvent.startNewChat(startNewChatParam: $startNewChatParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$startNewChatImpl &&
            (identical(other.startNewChatParam, startNewChatParam) ||
                other.startNewChatParam == startNewChatParam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startNewChatParam);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$startNewChatImplCopyWith<_$startNewChatImpl> get copyWith =>
      __$$startNewChatImplCopyWithImpl<_$startNewChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) addUser,
    required TResult Function() getAllUser,
    required TResult Function(UsercaseParam usercaseParam) getChatMessages,
    required TResult Function(SendImageMessageParam sendImageMessageParam)
        sendImageMessage,
    required TResult Function(StartNewChatParam startNewChatParam) startNewChat,
  }) {
    return startNewChat(startNewChatParam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? addUser,
    TResult? Function()? getAllUser,
    TResult? Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult? Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult? Function(StartNewChatParam startNewChatParam)? startNewChat,
  }) {
    return startNewChat?.call(startNewChatParam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? addUser,
    TResult Function()? getAllUser,
    TResult Function(UsercaseParam usercaseParam)? getChatMessages,
    TResult Function(SendImageMessageParam sendImageMessageParam)?
        sendImageMessage,
    TResult Function(StartNewChatParam startNewChatParam)? startNewChat,
    required TResult orElse(),
  }) {
    if (startNewChat != null) {
      return startNewChat(startNewChatParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addUser value) addUser,
    required TResult Function(_getAllUser value) getAllUser,
    required TResult Function(_getChatMessages value) getChatMessages,
    required TResult Function(_sendImageMessage value) sendImageMessage,
    required TResult Function(_startNewChat value) startNewChat,
  }) {
    return startNewChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addUser value)? addUser,
    TResult? Function(_getAllUser value)? getAllUser,
    TResult? Function(_getChatMessages value)? getChatMessages,
    TResult? Function(_sendImageMessage value)? sendImageMessage,
    TResult? Function(_startNewChat value)? startNewChat,
  }) {
    return startNewChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addUser value)? addUser,
    TResult Function(_getAllUser value)? getAllUser,
    TResult Function(_getChatMessages value)? getChatMessages,
    TResult Function(_sendImageMessage value)? sendImageMessage,
    TResult Function(_startNewChat value)? startNewChat,
    required TResult orElse(),
  }) {
    if (startNewChat != null) {
      return startNewChat(this);
    }
    return orElse();
  }
}

abstract class _startNewChat implements HomeEvent {
  const factory _startNewChat(final StartNewChatParam startNewChatParam) =
      _$startNewChatImpl;

  StartNewChatParam get startNewChatParam;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$startNewChatImplCopyWith<_$startNewChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  Status get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({Status status, String? message});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String? message});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl({this.status = Status.initial, this.message});

  @override
  @JsonKey()
  final Status status;
  @override
  final String? message;

  @override
  String toString() {
    return 'HomeState(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState({final Status status, final String? message}) =
      _$HomeStateImpl;

  @override
  Status get status;
  @override
  String? get message;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
