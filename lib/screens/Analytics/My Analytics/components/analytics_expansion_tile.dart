import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import 'address_tile.dart';

class AnalyticsExpansionTile extends StatelessWidget {
  const AnalyticsExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> headerTitles = {
      "0": {
        "text": "Задолженности",
        "color": Colors.red[200],
        "icon": Icons.attach_money,
      },
      "1": {
        "text": "Не сняты показания",
        "color": Colors.grey[200],
        "icon": Icons.electric_meter_outlined,
      },
      "2": {
        "text": "Нерешенные заявки",
        "color": Colors.amber[200],
        "icon": Icons.work_off_outlined,
      },
    };

    final List<String> addresses = [
      "Ул. Ленина д7 кв99",
      "с. Лебединовка 66",
      "с. Лебединовка 66",
    ];
    return Column(
      children: [
        ...List.generate(
          3,
          (index) {
            return Padding(
              padding: EdgeInsets.all(getPropScreenWidth(10)),
              child: TasksExpansionTile(
                title: headerTitles[index.toString()]["text"],
                addresses: addresses,
                color: headerTitles[index.toString()]["color"],
                icon: headerTitles[index.toString()]["icon"],
              ),
            );
          },
        ),
      ],
    );
  }
}

class TasksExpansionTile extends StatelessWidget {
  final String title;
  final List<String> addresses;
  final Color color;
  final IconData icon;

  const TasksExpansionTile({
    Key? key,
    required this.title,
    required this.addresses,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
      child: ExpansionTile(
        leading: Icon(icon),
        collapsedBackgroundColor: color,
        title: Text(
          title,
          style: TextStyle(fontSize: getPropScreenWidth(18)),
        ),
        children: [
          ...List.generate(
            addresses.length,
            (index) {
              return AddressTile(address: addresses[index], color: color);
            },
          )
        ],
      ),
    );
  }
}
