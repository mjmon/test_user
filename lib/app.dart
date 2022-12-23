import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/injection.dart';
import 'package:testapp/modules/users/repository/user_repository.dart';
import 'package:testapp/modules/users/state/user_list/bloc/user_list_bloc.dart';
import 'package:testapp/routing/routing.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        behavior: HitTestBehavior.translucent,
        child: BlocProvider(
          create: (context) =>
              UserListBloc(userRepository: getIt<IUserRepository>()),
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
          ),
        ));
  }
}
