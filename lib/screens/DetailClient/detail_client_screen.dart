import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/components/default_bottom_navigation_bar.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/main.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/screens/DetailClient/components/body.dart';

class DetailClientScreen extends StatelessWidget {
  static const String routeName = "/detail-client";
  const DetailClientScreen({super.key, required this.client});
  final Client client;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MyApp.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Body(client: client,),
      bottomNavigationBar: const DefaultBottomNavigationBar(
          currentIndex: kDetailClientScreenIndex),
    );
  }
}
