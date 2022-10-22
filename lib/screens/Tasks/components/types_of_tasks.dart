import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Tasks/components/tasks_expansion_tile.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class TypesOfTasks extends StatelessWidget {
  const TypesOfTasks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
        Text(
       "Выберите тип проблемы:",
       style: headingStyle,
     ),
     SizedBox(
       height: getPropScreenWidth(30),
     ),
     const TasksExpansionTile(
       title: "В очереди",
       status: kInQueue,
     ),
     SizedBox(
       height: getPropScreenWidth(20),
     ),
     const TasksExpansionTile(
       title: "В работе",
       status: kInWork,
     ),
     ],
    );
  }
}