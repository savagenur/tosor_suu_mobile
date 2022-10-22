import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tosor_suu_mobile/screens/CompletedTasks/completed_tasks_screen.dart';
import 'package:tosor_suu_mobile/screens/Home/home_screen.dart';
import 'package:tosor_suu_mobile/screens/Login/login_screen.dart';
import 'package:tosor_suu_mobile/screens/DetailTask/detail_task_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    dynamic arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case LoginScreen.routeName:
        return PageTransition(
            child: const LoginScreen(), type: PageTransitionType.topToBottom);

      case HomeScreen.routeName:
        arguments as HomeScreen;
        return PageTransition(
            child: HomeScreen(
              currentIndex: arguments.currentIndex,
            ),
            type: PageTransitionType.fade,
            settings: const RouteSettings(name: HomeScreen.routeName));
      case DetailTaskScreen.routeName:
        arguments as DetailTaskScreen;
        return PageTransition(
            child: DetailTaskScreen(task: arguments.task),
            type: PageTransitionType.bottomToTop,
            );
      case CompletedTasksScreen.routeName:
        return PageTransition(
            child: const CompletedTasksScreen(),
            type: PageTransitionType.rightToLeft);

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
