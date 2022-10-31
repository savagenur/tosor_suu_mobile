import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/screens/CheckOfService/components/body.dart';

class CheckOfServiceScreen extends StatelessWidget {
  static const String routeName = "/check-of-service";
  const CheckOfServiceScreen(
      {super.key, required this.service, required this.client});
  final String service;
  final Client client;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Счёт за ($service)",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Body(client: client,service: service,),
    );
  }
}
