import 'package:flutter/material.dart';

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
            return buildTaskTile(task);
          }
          return Container();
        }),
      ],
    );
  }

  Padding buildTaskTile(Task task) {
    return Padding(
            padding: EdgeInsets.all(getPropScreenWidth(10)),
            child: InkWell(
              onTap: () {},
              radius: getPropScreenWidth(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(getPropScreenWidth(10))),
                leading: const Icon(Icons.work),
                subtitle: Text(task.date),
                title: Text(
                  task.task,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                tileColor: task.priorityStatus == kNormalStatusPriority
                    ? kPriorityColor1
                    : task.priorityStatus == kHighStatusPriority
                        ? kPriorityColor2
                        : kPriorityColor3,
              ),
            ),
          );
  }
}