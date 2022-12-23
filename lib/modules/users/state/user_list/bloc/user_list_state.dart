part of 'user_list_bloc.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    required bool isBusy,
    required bool isSuccess,
    required String errorMessage,
    required List<User> userList,
  }) = _UserListState;

  factory UserListState.initial() => const UserListState(
      isBusy: false, isSuccess: false, errorMessage: '', userList: []);
}
