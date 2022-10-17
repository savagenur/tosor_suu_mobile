import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Login/login_screen.dart';
import 'package:tosor_suu_mobile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Тосор суу',
      theme: theme(),
      home: const LoginScreen(),
    );
  }
}
