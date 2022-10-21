import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/main.dart';
import 'package:tosor_suu_mobile/screens/Analytics/components/body.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            MyApp.title,
            style: Theme.of(context).textTheme.headline6,
          ),
          bottom: const TabBar(
            
            tabs: [
              Tab(child: Text("Общая Сводка",),),
              Tab(child: Text("Моя Сводка"),),
            ],
          ),
        ),
        body:const Body(),
      ),
    );
  }
}
