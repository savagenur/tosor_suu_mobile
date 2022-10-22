import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class StatusItem extends StatelessWidget {
  const StatusItem({
    Key? key,
    required this.priority,
    required this.status,
  }) : super(key: key);
  final int status;
  final int priority;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getPropScreenWidth(10)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.flag,
          ),
        ),
        title: Text(
          "Статус",
          style: TextStyle(
            fontSize: getPropScreenWidth(20),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            Chip(
              label: Text(
                  status == 1
                      ? kInQueueTextStatus
                      : status == 2
                          ? kInWorkTextStatus
                          : kCompleteTextStatus,
                  style: TextStyle(
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.w600)),
              backgroundColor: status == 3
                  ? null
                  : priority == 1
                      ? kPriorityColor1
                      : priority == 2
                          ? kPriorityColor2
                          : kPriorityColor3,
            ),
          ],
        ),
      ),
    );
  }
}
