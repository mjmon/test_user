// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchUsers value) fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchUsers value)? fetchUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchUsers value)? fetchUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res, UserListEvent>;
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res, $Val extends UserListEvent>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_fetchUsersCopyWith<$Res> {
  factory _$$_fetchUsersCopyWith(
          _$_fetchUsers value, $Res Function(_$_fetchUsers) then) =
      __$$_fetchUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_fetchUsersCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$_fetchUsers>
    implements _$$_fetchUsersCopyWith<$Res> {
  __$$_fetchUsersCopyWithImpl(
      _$_fetchUsers _value, $Res Function(_$_fetchUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_fetchUsers implements _fetchUsers {
  const _$_fetchUsers();

  @override
  String toString() {
    return 'UserListEvent.fetchUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_fetchUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUsers,
  }) {
    return fetchUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchUsers,
  }) {
    return fetchUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUsers,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchUsers value) fetchUsers,
  }) {
    return fetchUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchUsers value)? fetchUsers,
  }) {
    return fetchUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchUsers value)? fetchUsers,
    required TResult orElse(),
  }) {
    if (fetchUsers != null) {
      return fetchUsers(this);
    }
    return orElse();
  }
}

abstract class _fetchUsers implements UserListEvent {
  const factory _fetchUsers() = _$_fetchUsers;
}

/// @nodoc
mixin _$UserListState {
  bool get isBusy => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<User> get userList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res, UserListState>;
  @useResult
  $Res call(
      {bool isBusy, bool isSuccess, String errorMessage, List<User> userList});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res, $Val extends UserListState>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusy = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? userList = null,
  }) {
    return _then(_value.copyWith(
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserListStateCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$_UserListStateCopyWith(
          _$_UserListState value, $Res Function(_$_UserListState) then) =
      __$$_UserListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isBusy, bool isSuccess, String errorMessage, List<User> userList});
}

/// @nodoc
class __$$_UserListStateCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$_UserListState>
    implements _$$_UserListStateCopyWith<$Res> {
  __$$_UserListStateCopyWithImpl(
      _$_UserListState _value, $Res Function(_$_UserListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusy = null,
    Object? isSuccess = null,
    Object? errorMessage = null,
    Object? userList = null,
  }) {
    return _then(_$_UserListState(
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userList: null == userList
          ? _value._userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_UserListState implements _UserListState {
  const _$_UserListState(
      {required this.isBusy,
      required this.isSuccess,
      required this.errorMessage,
      required final List<User> userList})
      : _userList = userList;

  @override
  final bool isBusy;
  @override
  final bool isSuccess;
  @override
  final String errorMessage;
  final List<User> _userList;
  @override
  List<User> get userList {
    if (_userList is EqualUnmodifiableListView) return _userList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userList);
  }

  @override
  String toString() {
    return 'UserListState(isBusy: $isBusy, isSuccess: $isSuccess, errorMessage: $errorMessage, userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserListState &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._userList, _userList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBusy, isSuccess, errorMessage,
      const DeepCollectionEquality().hash(_userList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      __$$_UserListStateCopyWithImpl<_$_UserListState>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  const factory _UserListState(
      {required final bool isBusy,
      required final bool isSuccess,
      required final String errorMessage,
      required final List<User> userList}) = _$_UserListState;

  @override
  bool get isBusy;
  @override
  bool get isSuccess;
  @override
  String get errorMessage;
  @override
  List<User> get userList;
  @override
  @JsonKey(ignore: true)
  _$$_UserListStateCopyWith<_$_UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}
