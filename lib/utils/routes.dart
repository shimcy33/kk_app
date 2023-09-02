import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krispy_kreme/views/login/login_screen.dart';

import '../views/account/account_sceen.dart';
import '../views/account/create_account_screen.dart';
import '../views/home/rewards_home.dart';
import '../views/on_boarding/on_boarding-screen.dart';
import '../views/splash.dart';

class RouteGenerator {
  static const String routeInitial = "/";
  static const String routeOnBoarding = "routeOnBoarding";
  static const String routeLogin = "routeLogin";
  static const String routeCreateAcct = "routeCreateAcct";
  static const String routeAccountScreen = "routeAccountScreen";
  static const String routeRewardHomeScreen = "routeRewardHomeScreen";
  static const String routeError = "routeError";

  Route generateRoute(RouteSettings settings, {var routeBuilders}) {
    switch (settings.name) {
      case routeInitial:
        return _buildRoute(routeInitial, const SplashScreen());
      case routeOnBoarding:
        return _buildRoute(routeOnBoarding, const OnBoardingScreen());
      case routeLogin:
        return _buildRoute(routeLogin, const LoginScreen());
      case routeCreateAcct:
        return _buildRoute(routeCreateAcct, const CreateAccountScreen());
      case routeAccountScreen:
        return _buildRoute(routeAccountScreen, const AccountScreen());
      case routeRewardHomeScreen:
        return _buildRoute(routeRewardHomeScreen, const RewardsHomeScreen());

      default:
        return _buildRoute(routeError, const ErrorView());
    }
  }

  Route _buildRoute(String route, Widget widget,
      {bool enableFullScreen = false}) {
    return CupertinoPageRoute(
        fullscreenDialog: enableFullScreen,
        settings: RouteSettings(name: route),
        builder: (_) => widget);
  }
}

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Error View")),
        body: const Center(child: Text('Page not found')));
  }
}

class NavRoutes {
  static void navToOnBoarding(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamed(RouteGenerator.routeOnBoarding);
  }

  static void navToLogin(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamed(RouteGenerator.routeLogin);
  }

  static void navToCreateAccount(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamed(RouteGenerator.routeCreateAcct);
  }

  static void navToAccountScreen(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamed(RouteGenerator.routeAccountScreen);
  }
  static void navToRewardHomeScreen(BuildContext context) {
    Navigator.of(context, rootNavigator: true)
        .pushNamed(RouteGenerator.routeRewardHomeScreen);
  }
}
