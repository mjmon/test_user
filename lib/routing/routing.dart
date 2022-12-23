import 'package:go_router/go_router.dart';
import 'package:testapp/modules/users/model/user/user.dart';
import 'package:testapp/modules/users/view/home_page.dart';
import 'package:testapp/modules/users/view/user_detail_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
      path: '/user-detail',
      name: 'user-detail',
      builder: (context, state) {
        final user = state.extra as User;

        return UserDetailPage(user: user);
      }),
]);
