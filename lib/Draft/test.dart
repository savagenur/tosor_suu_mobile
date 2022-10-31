import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  static const String routeName = "txt";
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "txt",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
