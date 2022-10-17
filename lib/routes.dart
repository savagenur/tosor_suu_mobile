import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Home/home_screen.dart';
import 'package:tosor_suu_mobile/screens/Login/login_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    dynamic arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
