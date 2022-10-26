import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/filters.dart';
import '../../../size_config.dart';

// ignore: must_be_immutable
class FiltersPopupMenuBtn extends StatelessWidget {
   FiltersPopupMenuBtn({
    Key? key,
  }) : super(key: key);

  String selectedItem = allFilters[0];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      
      splashRadius: getPropScreenWidth(20),
      onSelected: (value) {
        selectedItem = value;
      },
      itemBuilder: (_) {
        return allFilters
            .map((filter) => buildCheckedPopupItem(filter))
            .toList();
      },
      child: buildText(),
    );
  }

  CheckedPopupMenuItem<String> buildCheckedPopupItem(String filter) {
    return CheckedPopupMenuItem(
                checked: selectedItem == filter,
                value: filter,
                child: Text(
                  filter,
                ),
              );
  }

  Container buildText() {
    return Container(
      padding: EdgeInsets.all(getPropScreenWidth(10)),
      decoration: BoxDecoration(
        border: Border.all(
          color: kTextColor,
        ),
        borderRadius: BorderRadius.circular(
          getPropScreenWidth(20),
        ),
      ),
      child: Row(
        children: const [
          Text(
            "Фильтр",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: kTextColor,
          )
        ],
      ),
    );
  }
}