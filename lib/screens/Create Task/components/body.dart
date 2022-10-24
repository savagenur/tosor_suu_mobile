import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * .03,
            ),
            PriorityPopupMenu(),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Введите адрес",
                  prefixIcon: Icon(Icons.location_on_outlined)),
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Контактный номер",
                  prefixIcon: Icon(Icons.phone_iphone_rounded)),
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            TextFormField(
              minLines: 4,
              maxLines: 10,
              decoration: const InputDecoration(
                hintText: "Опишите проблему...",
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Отмена"),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Сохранить"))
              ],
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            )
          ],
        ),
      ),
    );
  }
}

class PriorityPopupMenu extends StatefulWidget {
  PriorityPopupMenu({
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
