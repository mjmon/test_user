import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/modules/users/state/user_list/bloc/user_list_bloc.dart';

void main() {
  group("UserListState", () {
    test("supports value equality", () {
      expect(UserListState.initial(), UserListState.initial());
    });

    test("is initialized properly", () {
      expect(
          UserListState.initial(),
          const UserListState(
              isBusy: false, isSuccess: false, errorMessage: '', userList: []));
    });
  });
}
