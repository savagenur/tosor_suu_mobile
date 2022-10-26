import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/main.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/screens/CreateTaskToStaff/components/body.dart';

import '../../components/default_bottom_navigation_bar.dart';
import '../../constants.dart';

class CreateTaskToStaffScreen extends StatelessWidget {
  static const String routeName = "/create-task-to-staff";
  const CreateTaskToStaffScreen({super.key, required this.client});
  final Client client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Создание заявки тех. службе",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Body(client: client,),
      bottomNavigationBar: const DefaultBottomNavigationBar(
        currentIndex: kCreateTaskToStaffScreenIndex,
      )
    );
  }
}
