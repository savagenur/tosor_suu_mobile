import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Add%20New%20Client/add_new_client_screen.dart';

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
          onPressed: () {
            Navigator.pushNamed(context, AddNewClientScreen.routeName);
          },
          child: const Text("Добавить абонента"),
        )
      ],
    );
  }
}
