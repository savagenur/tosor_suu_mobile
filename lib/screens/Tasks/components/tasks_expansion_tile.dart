import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/DetailTask/detail_task_screen.dart';

import '../../../constants.dart';
import '../../../data/tasks.dart';
import '../../../models/task.dart';
import '../../../size_config.dart';

class TasksExpansionTile extends StatelessWidget {
  const TasksExpansionTile({
    Key? key,
    required this.title,
    required this.status,
  }) : super(key: key);
  final String title;
  final int status;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.grey[200],
      title: Text(
        title,
        style: TextStyle(
          fontSize: getPropScreenWidth(18),
          fontWeight: FontWeight.w600,
        ),
      ),
      children: [
        ...allTasks.map((task) {
          if (task.completionStatus == status) {
            return buildTaskTile(context, task);
          }
          return Container();
        }),
      ],
    );
  }

  Padding buildTaskTile(BuildContext context, Task task) {
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
          leading: const Icon(Icons.work),
          subtitle: Text(task.date),
          title: Text(
            task.task,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          tileColor: task.priorityStatus == kNormalStatusPriority
              ? kNormalPriorityColor
              : task.priorityStatus == kHighStatusPriority
                  ? kHighPriorityColor
                  : kEmergencyPriorityColor,
        ),
      ),
    );
  }
}
