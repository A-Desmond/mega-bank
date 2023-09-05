import 'package:go_router/go_router.dart';
import 'package:mega_bank/features/authentication/screens/change_password.dart';
import 'package:mega_bank/features/authentication/screens/login.dart';
import 'package:mega_bank/features/home/screens/bottom_bar.dart';
import 'package:mega_bank/features/profile/screen/profile.dart';
import 'package:mega_bank/route/route_name.dart';

import '../features/authentication/screens/reset_password.dart';

final GoRouter route = GoRouter(routes: <RouteBase>[
  GoRoute(
      path: RouteName.login,
      name: RouteName.login,
      builder: (context, state) {
        return const LoginPage();
      }),
  GoRoute(
      path: RouteName.home,
      name: RouteName.home,
      builder: (context, state) {
        return const BottomBar();
      }),
  GoRoute(
      path: RouteName.resetPassword,
      name: RouteName.resetPassword,
      builder: (context, state) {
        return const ResetPassword();
      }),
  GoRoute(
      path: RouteName.changePassword,
      name: RouteName.changePassword,
      builder: (context, state) {
        return const ChangePassword();
      }),
  GoRoute(
      path: RouteName.profile,
      name: RouteName.profile,
      builder: (context, state) {
        return const Profile();
      }),

]);
