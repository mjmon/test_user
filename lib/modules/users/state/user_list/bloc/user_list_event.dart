part of 'user_list_bloc.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.fetchUsers() = _fetchUsers;
}