import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/routes.dart';
import 'package:tosor_suu_mobile/screens/Login/login_screen.dart';
import 'package:tosor_suu_mobile/theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  static const title = 'ОО "Тосор суу"';
   MyApp({super.key});
  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: theme(),
      onGenerateRoute: _appRouter.onGenerateRoute,
      initialRoute: LoginScreen.routeName,
    );
  }
}
