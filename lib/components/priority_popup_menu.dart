
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class PriorityPopupMenu extends StatefulWidget {
  const PriorityPopupMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<PriorityPopupMenu> createState() => _PriorityPopupMenuState();
}

class _PriorityPopupMenuState extends State<PriorityPopupMenu> {
  String priorityStatus = kNormalPriorityTextStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Приоритет: ", style: simpleTextStyle),
        PopupMenuButton(
          onSelected: (value) {
            setState(
              () {
                priorityStatus = value;
              },
            );
          },
          itemBuilder: (context) {
            return [
              CheckedPopupMenuItem(
                checked: priorityStatus == kNormalPriorityTextStatus,
                value: kNormalPriorityTextStatus,
                child: const Text(kNormalPriorityTextStatus),
              ),
              CheckedPopupMenuItem(
                checked: priorityStatus == kHighPriorityTextStatus,
                value: kHighPriorityTextStatus,
                child: const Text(kHighPriorityTextStatus),
              ),
              CheckedPopupMenuItem(
                checked: priorityStatus == kEmergencyPriorityTextStatus,
                value: kEmergencyPriorityTextStatus,
                child: const Text(kEmergencyPriorityTextStatus),
              ),
            ];
          },
          child: Chip(
            backgroundColor: priorityStatus == kNormalPriorityTextStatus
                ? kNormalPriorityColor
                : priorityStatus == kHighPriorityTextStatus
                    ? kHighPriorityColor
                    : kEmergencyPriorityColor,
            label: Padding(
              padding: EdgeInsets.all(getPropScreenWidth(5)),
              child: Row(
                children: [
                  Text(priorityStatus),
                  const Icon(Icons.arrow_drop_down_rounded),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
