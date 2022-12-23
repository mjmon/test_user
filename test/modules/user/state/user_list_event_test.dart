import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/modules/users/state/user_list/bloc/user_list_bloc.dart';

void main() {
  group("UserListEvent", () {
    group("fetchUsers", () {
      test("supports value equality", () {
        expect(
            const UserListEvent.fetchUsers(), const UserListEvent.fetchUsers());
      });
    });
  });
}
