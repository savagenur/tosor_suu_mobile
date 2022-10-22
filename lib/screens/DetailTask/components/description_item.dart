import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.iconCircleColor,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData iconData;
  final Color iconCircleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getPropScreenWidth(10)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: iconCircleColor,
          child: Icon(
            iconData,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: getPropScreenWidth(20),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle,
            style: TextStyle(
                fontSize: getPropScreenWidth(18), fontWeight: FontWeight.w600)),
      ),
    );
  }
}