import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';

import '../../../size_config.dart';

class ClientDescriptionItem extends StatelessWidget {
  ClientDescriptionItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.iconCircleColor,
    this.onTap,
    this.isEditable=false,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData iconData;
  final Color iconCircleColor;
  final bool isEditable;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconCircleColor,
        child: Icon(
          iconData,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: getPropScreenWidth(16),
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subtitle,
          style: TextStyle(
              fontSize: getPropScreenWidth(14), fontWeight: FontWeight.w600)),
      trailing: isEditable? IconButton(
        icon: const Icon(
          Icons.edit,
          color: kPrimaryColor,
        ),
        onPressed: onTap,
      ):null,
    );
  }
}
