import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/screens/Home/home_screen.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import '../../../components/default_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            const Spacer(),
            TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                label: const Text("Логин"),
              ),
            ),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                  label: Text("Пароль")),
            ),
            SizedBox(
              height: getPropScreenHeight(20),
            ),
            DefaultButton(
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              text: "Вход",
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
