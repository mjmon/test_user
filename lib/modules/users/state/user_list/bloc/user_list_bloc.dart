import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testapp/modules/users/model/user/user.dart';
import 'package:testapp/modules/users/repository/user_repository.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';
part 'user_list_bloc.freezed.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final IUserRepository _userRepository;

  UserListBloc({required IUserRepository userRepository})
      : _userRepository = userRepository,
        super(UserListState.initial()) {
    on<UserListEvent>((event, emit) async {
      await event.map(fetchUsers: (_) => _fetchUsersHandler(emit));
    });
  }

  Future<void> _fetchUsersHandler(Emitter<UserListState> emit) async {
    try {
      emit(state.copyWith(isBusy: true));
      final result = await _userRepository.fetchUsers();

      result.fold((error) {
        //error
        emit(state.copyWith(
            isBusy: false, isSuccess: false, errorMessage: error));
      }, (data) {
        //success
        //remove duplicates
        final uniqueUsers = [...data.toSet()];
        emit(state.copyWith(
            isBusy: false, isSuccess: true, userList: uniqueUsers));
      });
    } on Exception catch (e) {
      emit(state.copyWith(
          isBusy: false, isSuccess: false, errorMessage: e.toString()));
    } catch (e, s) {
      debugPrint("error: $e, stacktrace: $s");
      emit(state.copyWith(
          isBusy: false, isSuccess: false, errorMessage: e.toString()));
    }
  }
}
