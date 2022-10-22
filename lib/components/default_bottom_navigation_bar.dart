import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Home/home_screen.dart';

class DefaultBottomNavigationBar extends StatelessWidget {
  const DefaultBottomNavigationBar({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        if (value == 0) {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName,
              arguments: const HomeScreen(
                currentIndex: 0,
              ));
        }
        if (value == 1) {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName,
              arguments: const HomeScreen(
                currentIndex: 1,
              ));
        }
        if (value == 2) {
          Navigator.pushReplacementNamed(context, HomeScreen.routeName,
              arguments: const HomeScreen(
                currentIndex: 2,
              ));
        }
      },
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.analytics), label: "Сводка"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Абоненты"),
        BottomNavigationBarItem(
            icon: Icon(Icons.cases_rounded), label: "Задачи"),
      ],
    );
  }
}
