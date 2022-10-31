import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tosor_suu_mobile/screens/Add%20New%20Client/add_new_client_screen.dart';
import 'package:tosor_suu_mobile/screens/CheckOfService/check_of_service_screen.dart';
import 'package:tosor_suu_mobile/screens/ChooseService/choose_service_screen.dart';
import 'package:tosor_suu_mobile/screens/CompletedTasks/completed_tasks_screen.dart';
import 'package:tosor_suu_mobile/screens/CreateTaskToStaff/create_task_to_staff_screen.dart';
import 'package:tosor_suu_mobile/screens/CreateTask/create_task_screen.dart';
import 'package:tosor_suu_mobile/screens/DetailClient/detail_client_screen.dart';
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
          child: DetailTaskScreen(
            task: arguments.task,
            isCompleted: arguments.isCompleted,
          ),
          type: PageTransitionType.bottomToTop,
        );
      case CompletedTasksScreen.routeName:
        return PageTransition(
            child: const CompletedTasksScreen(),
            type: PageTransitionType.rightToLeft);

      case CreateTaskScreen.routeName:
        return PageTransition(
            child: const CreateTaskScreen(),
            type: PageTransitionType.rightToLeft);

      case AddNewClientScreen.routeName:
        return PageTransition(
            child: const AddNewClientScreen(),
            type: PageTransitionType.rightToLeft);
      case DetailClientScreen.routeName:
        arguments as DetailClientScreen;
        return PageTransition(
            child: DetailClientScreen(
              client: arguments.client,
            ),
            type: PageTransitionType.bottomToTop);
      case CreateTaskToStaffScreen.routeName:
        arguments as CreateTaskToStaffScreen;
        return PageTransition(
            child: CreateTaskToStaffScreen(
              client: arguments.client,
            ),
            type: PageTransitionType.leftToRight);

      case ChooseServiceScreen.routeName:
        arguments as ChooseServiceScreen;
        return PageTransition(
            child: ChooseServiceScreen(
              client: arguments.client,
            ),
            type: PageTransitionType.rightToLeft);

      case CheckOfServiceScreen.routeName:
        arguments as CheckOfServiceScreen;
        return PageTransition(
            child: CheckOfServiceScreen(
              client: arguments.client,
              service: arguments.service,
            ),
            type: PageTransitionType.bottomToTop);

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
