import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/components/save_and_cancel_btn.dart';
import 'package:tosor_suu_mobile/components/priority_popup_menu.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import 'client_items.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.client});
  final Client client;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClientItems(client: client),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: const PriorityPopupMenu(),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: TextFormField(
                minLines: 4,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: "Опишите проблему...",
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: TextFormField(
                minLines: 2,
                maxLines: 6,
                decoration: const InputDecoration(
                  hintText: "Комментарий...",
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(30),
            ),
            SaveAndCancelBtn(
              onTapSave: () {},
            ),
            SizedBox(
              height: SizeConfig.screenHeight * .05,
            ),
          ],
        ),
      ),
    );
  }
}


