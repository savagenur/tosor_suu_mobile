import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/components/default_bottom_navigation_bar.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/models/task.dart';
import 'package:tosor_suu_mobile/screens/DetailTask/components/body.dart';

class DetailTaskScreen extends StatelessWidget {
  static const routeName = "/detail-task";
  const DetailTaskScreen({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Описание заявки",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Body(task: task,),
      bottomNavigationBar: const DefaultBottomNavigationBar(
          currentIndex: kDetailTaskScreenIndex),
    );
  }
}
