import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/size_config.dart';

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
            DefaultButton(press: () {
              
            },text: "Вход",),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final GestureTapCallback press;
  const DefaultButton({
    Key? key, required this.text, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getPropScreenHeight(50),
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style:
              TextStyle(color: Colors.white, fontSize: getPropScreenWidth(18)),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
