import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/components/default_bottom_navigation_bar.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/screens/CompletedTasks/components/body.dart';

class CompletedTasksScreen extends StatelessWidget {
  static const String routeName = '/completed-tasks';
  const CompletedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Выполненные заявки",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: const Body(),
      bottomNavigationBar: const DefaultBottomNavigationBar(
          currentIndex: kCompletedTasksScreenIndex),
    );
  }
}
