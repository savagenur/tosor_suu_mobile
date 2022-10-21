import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Analytics/analytics_screen.dart';
import 'package:tosor_suu_mobile/screens/Clients/clients_screen.dart';
import 'package:tosor_suu_mobile/screens/Tasks/tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = const [
  AnalyticsScreen(),
    ClientsScreen(),
    TasksScreen(),
    
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: "Сводка"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Абоненты"),
          BottomNavigationBarItem(icon: Icon(Icons.cases_rounded), label: "Задачи"),
        ],
      ),
    );
  }
}
