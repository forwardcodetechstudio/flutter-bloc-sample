import 'package:fcts_flutter_starter/routes/route_utils.dart';
import 'package:fcts_flutter_starter/screens/error/error_404_screen.dart';
import 'package:fcts_flutter_starter/screens/login/view/login_screen.dart';
import 'package:fcts_flutter_starter/screens/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigator =
      GlobalKey(debugLabel: 'root');
  static final GlobalKey<NavigatorState> _shellNavigator =
      GlobalKey(debugLabel: 'shell');

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigator,
    initialLocation: PAGES.splash.screenPath,
    routes: [
      GoRoute(
        path: PAGES.splash.screenPath,
        name: PAGES.splash.screenName,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
          path: PAGES.login.screenPath,
          name: PAGES.login.screenName,
          builder: (context, state) => LoginScreen()),
    ],
    errorBuilder: (context, state) => const Error404Screen(),
  );

  static GoRouter get router => _router;
}
