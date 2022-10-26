import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import '../../../components/save_and_cancel_btn.dart';
import '../../../components/priority_popup_menu.dart';

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
            const PriorityPopupMenu(),
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
            SaveAndCancelBtn(
              onTapSave: () {},
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
