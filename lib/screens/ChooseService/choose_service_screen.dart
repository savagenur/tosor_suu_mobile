import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/screens/ChooseService/components/body.dart';

class ChooseServiceScreen extends StatelessWidget {
  static const String routeName = '/choose-service';
  const ChooseServiceScreen({super.key, required this.client});
  final Client client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Выберите услугу",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Body(client: client,),
    );
  }
}
