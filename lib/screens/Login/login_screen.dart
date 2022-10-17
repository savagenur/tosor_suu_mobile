import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import 'components/body.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Логин",
            style: Theme.of(context).textTheme.headline6,
          ),
          centerTitle: true,
        ),
        body: const Body(),
      ),
    );
  }
}
