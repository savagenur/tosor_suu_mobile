import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Analytics/analytics_screen.dart';
import 'package:tosor_suu_mobile/screens/Clients/clients_screen.dart';
import 'package:tosor_suu_mobile/screens/Tasks/tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home";
  const HomeScreen({super.key, this.currentIndex = 0});
  final int currentIndex;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens = const [
    AnalyticsScreen(),
    ClientsScreen(),
    TasksScreen(),
  ];
  late int currentIndex;
  @override
  void initState() {
    currentIndex = widget.currentIndex;

    super.initState();
  }

  void setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: "Сводка"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Абоненты"),
          BottomNavigationBarItem(
              icon: Icon(Icons.cases_rounded), label: "Задачи"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: currentIndex == 2
          ? ElevatedButton.icon(onPressed: () {
                
              }, icon: Icon(Icons.add), label: Text("Создание заявки"))
          : null,
    );
  }
}

class HomeScreenArgs {
  final int currentIndex;

  HomeScreenArgs(this.currentIndex);
}
