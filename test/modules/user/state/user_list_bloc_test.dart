import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/modules/users/model/user/user.dart';
import 'package:testapp/modules/users/repository/user_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:testapp/modules/users/state/user_list/bloc/user_list_bloc.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  group("UserListBloc", () {
    late IUserRepository userRepository;
    late UserListBloc userListBloc;

    setUp(() {
      userRepository = MockUserRepository();
      userListBloc = UserListBloc(userRepository: userRepository);
    });

    test("initial state is UserListState.initial()", () {
      expect(userListBloc.state, UserListState.initial());
    });

    group("fetchUsers", () {
      blocTest<UserListBloc, UserListState>(
        "success emits state below",
        setUp: () {
          when(() => userRepository.fetchUsers()).thenAnswer((_) async =>
              const Right([User(id: '1', name: 'John', imageUrl: '')]));
        },
        act: (bloc) => bloc.add(const UserListEvent.fetchUsers()),
        build: () => UserListBloc(userRepository: userRepository),
        expect: () {
          final state1 = UserListState.initial().copyWith(isBusy: true);
          final state2 = state1.copyWith(
              isBusy: false,
              isSuccess: true,
              userList: [const User(id: '1', name: 'John', imageUrl: '')]);

          return [state1, state2];
        },
      );

      blocTest<UserListBloc, UserListState>(
        "success and removes duplicate will emit state below",
        setUp: () {
          when(() => userRepository.fetchUsers())
              .thenAnswer((_) async => const Right([
                    User(id: '1', name: 'John', imageUrl: ''),
                    User(id: '1', name: 'John', imageUrl: ''),
                    User(id: '2', name: 'Joe', imageUrl: ''),
                    User(id: '3', name: 'Jude', imageUrl: ''),
                    User(id: '4', name: 'Adam', imageUrl: '')
                  ]));
        },
        act: (bloc) => bloc.add(const UserListEvent.fetchUsers()),
        build: () => UserListBloc(userRepository: userRepository),
        expect: () {
          final state1 = UserListState.initial().copyWith(isBusy: true);
          final state2 =
              state1.copyWith(isBusy: false, isSuccess: true, userList: [
            const User(id: '1', name: 'John', imageUrl: ''),
            const User(id: '2', name: 'Joe', imageUrl: ''),
            const User(id: '3', name: 'Jude', imageUrl: ''),
            const User(id: '4', name: 'Adam', imageUrl: '')
          ]);

          return [state1, state2];
        },
      );

      blocTest<UserListBloc, UserListState>(
        "error emits state below",
        setUp: () {
          when(() => userRepository.fetchUsers())
              .thenAnswer((_) async => const Left("Some Error"));
        },
        act: (bloc) => bloc.add(const UserListEvent.fetchUsers()),
        build: () => UserListBloc(userRepository: userRepository),
        expect: () {
          final state1 = UserListState.initial().copyWith(isBusy: true);
          final state2 = state1.copyWith(
              isBusy: false, isSuccess: false, errorMessage: "Some Error");

          return [state1, state2];
        },
      );

      final exception = Exception('some exception');
      blocTest<UserListBloc, UserListState>(
        "exception emits state below",
        setUp: () {
          when(() => userRepository.fetchUsers()).thenThrow(exception);
        },
        act: (bloc) => bloc.add(const UserListEvent.fetchUsers()),
        build: () => UserListBloc(userRepository: userRepository),
        expect: () {
          final state1 = UserListState.initial().copyWith(isBusy: true);
          final state2 = state1.copyWith(
              isBusy: false,
              isSuccess: false,
              errorMessage: exception.toString());

          return [state1, state2];
        },
      );
    });
  });
}
