import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/models/task.dart';
import 'package:tosor_suu_mobile/screens/DetailTask/detail_task_screen.dart';
import 'package:tosor_suu_mobile/screens/Tasks/components/tasks_expansion_tile.dart';

import '../../../data/tasks.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...allTasks.map((task) {
              if (task.completionStatus == kCompleteStatus) {
                return buildTile(context, task);
              }
              return Container();
            })
          ],
        ),
      ),
    );
  }

  Padding buildTile(BuildContext context, Task task) {
    return Padding(
      padding: EdgeInsets.all(getPropScreenWidth(10)),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, DetailTaskScreen.routeName,
              arguments: DetailTaskScreen(task: task));
        },
        radius: getPropScreenWidth(10),
        child: ListTile(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(getPropScreenWidth(10))),
          leading: const Icon(Icons.download_done_sharp),
          subtitle: Text(task.date),
          title: Text(
            task.task,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          tileColor: Colors.grey[300],
        ),
      ),
    );
  }
}
