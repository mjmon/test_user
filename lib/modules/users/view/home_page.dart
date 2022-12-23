import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:testapp/modules/users/state/user_list/bloc/user_list_bloc.dart';
import 'package:testapp/modules/users/view/widget/user_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserListBloc>(context)
        .add(const UserListEvent.fetchUsers());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserListBloc, UserListState>(
      listener: (context, userListState) {
        // TODO: implement listener
      },
      buildWhen: (p, c) => p.isBusy != c.isBusy,
      builder: (context, userListState) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('List of Users'),
            ),
            body: Builder(builder: (context) {
              if (userListState.isBusy) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              } else if (userListState.userList.isEmpty) {
                return const Center(child: Text("No users found"));
              } else {
                return ListView.builder(
                    itemCount: userListState.userList.length,
                    itemBuilder: ((context, index) {
                      final user = userListState.userList.elementAt(index);
                      return UserTile(
                        user: user,
                        onTap: () {
                          // go to user details
                          GoRouter.of(context)
                              .pushNamed('user-detail', extra: user);
                        },
                      );
                    }));
              }
            }));
      },
    );
  }
}
