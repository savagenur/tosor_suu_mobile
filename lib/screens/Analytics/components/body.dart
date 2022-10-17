import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Analytics/General%20Analytics/general_analytics_screen.dart';
import 'package:tosor_suu_mobile/screens/Analytics/My%20Analytics/my_analytics_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        GeneralAnalyticsScreen(),
        MyAnalyticsScreen(),
      ],
    );
  }
}
