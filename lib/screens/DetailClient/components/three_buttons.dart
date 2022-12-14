import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/screens/ChooseService/choose_service_screen.dart';

import '../../../size_config.dart';

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({
    Key? key, required this.client,
  }) : super(key: key);
  final Client client;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.route),
                  label: const Text("Продолжить маршрут"),
                ),
              ),
              SizedBox(
                width: getPropScreenWidth(5),
              ),
              Expanded(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.electric_meter_outlined),
                  label: const Text("Вбить показания счётчика"),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getPropScreenWidth(5),
        ),
        SizedBox(
          width: SizeConfig.screenWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, ChooseServiceScreen.routeName,
                    arguments: ChooseServiceScreen(client: client));
              },
              icon: const Icon(Icons.attach_money_rounded),
              label: Padding(
                  padding: EdgeInsets.all(getPropScreenWidth(10)),
                  child: Text(
                    "Принять оплату наличными",
                    style:
                        TextStyle(fontSize: getPropScreenWidth(18), height: 1),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
