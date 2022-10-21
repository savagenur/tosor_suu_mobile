import 'package:flutter/material.dart';

import 'filters_popup_menu_btn.dart';

class HeaderClients extends StatelessWidget {
  const HeaderClients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FiltersPopupMenuBtn(),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Добавить абонента"),
        )
      ],
    );
  }
}