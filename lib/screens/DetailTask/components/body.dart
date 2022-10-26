import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/models/task.dart';
import 'package:tosor_suu_mobile/screens/DetailTask/components/status_item.dart';

import 'description_item.dart';

class Body extends StatelessWidget {
   final Task task;
  final bool isCompleted;
  const Body({super.key, required this.task,  this.isCompleted=false});
 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            StatusItem(
              status: task.completionStatus,
              priority: task.priorityStatus,
            ),
            DescriptionItem(
                title: "ФИО",
                subtitle: task.nameSurname,
                iconData: Icons.person,
                iconCircleColor: Colors.green),
            DescriptionItem(
                title: "Адрес",
                subtitle: task.address,
                iconData: Icons.location_on,
                iconCircleColor: Colors.blueGrey),
            DescriptionItem(
                title: "Контактный номер",
                subtitle: "+${task.phoneNumber}",
                iconData: Icons.phone,
                iconCircleColor: Colors.teal),
            DescriptionItem(
                title: !isCompleted? "Описание проблемы":"Комментарий",
                subtitle: !isCompleted?task.task : "Мы исправили все неполадки, и решили все проблемы связанные с '${task.task}'",
                iconData: Icons.description,
                iconCircleColor: Colors.indigo),
                Text(task.date)
          ],
        ),
      ),
    );
  }
}
