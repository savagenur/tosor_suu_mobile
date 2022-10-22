import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/main.dart';
import 'package:tosor_suu_mobile/screens/Tasks/components/body.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import 'components/drawer_of_priorities.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyApp.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      drawer: const DrawerOfPriorities(),
      body: Body(),
    );
  }
}


