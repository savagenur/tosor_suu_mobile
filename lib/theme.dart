import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(),
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          )),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
      textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: kTextColor,
          ),
          bodyText2: TextStyle(
            color: kTextColor,
          ),
          headline6: TextStyle(
            color: Color(0xFF8B8B8B),
          )),
      primarySwatch: Colors.blue,
    );
  }

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          28,
        ),
        gapPadding: 10,
        borderSide: const BorderSide(
          color: kTextColor,
        ),
      );
}