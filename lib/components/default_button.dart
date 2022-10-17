import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
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
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style:
              TextStyle(color: Colors.white, fontSize: getPropScreenWidth(18)),
        ),
      ),
    );
  }
}