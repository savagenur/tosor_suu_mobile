import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Add%20New%20Client/components/body.dart';

class AddNewClientScreen extends StatelessWidget {
  static const String routeName = "/add-new-client";
  const AddNewClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Добавить нового абонента",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Body(),
    );
  }
}
