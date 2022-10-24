import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/components/default_bottom_navigation_bar.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/screens/Create%20Task/components/body.dart';

class CreateTaskScreen extends StatelessWidget {
  static const routeName = '/create-task';
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Создание заявки",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: const Body(),
      bottomNavigationBar: const DefaultBottomNavigationBar(
        currentIndex: kCreateTaskScreenIndex,
      ),
    );
  }
}
