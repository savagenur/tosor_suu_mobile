import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/screens/DetailClient/components/create_task_btn_and_electric_meter.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import '../../../models/client.dart';
import 'client_items_list.dart';
import 'three_buttons.dart';

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
            Text(
              "Подробная история платежей\nопределённого абонента",
              style: headingStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            ClientItemsList(client: client),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            CreateTaskBtnAndElectricMeter(client: client),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
             ThreeButtons(client: client,),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}


