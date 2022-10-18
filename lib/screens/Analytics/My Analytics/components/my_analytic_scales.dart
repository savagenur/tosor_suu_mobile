import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../../components/animated_analytic_scale.dart';
class MyAnalyticScales extends StatelessWidget {
  const MyAnalyticScales({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        const AnimatedAnalyticScale(
          text: "Решено проблем",
          current: 8,
          total: 10,
          isMyAnalytics: true,
        ),
        SizedBox(height: getPropScreenWidth(20),),
      
        const AnimatedAnalyticScale(
          text: "Внесено показаний",
          current: 100,
          total: 144,
          isMyAnalytics: true,
        ),
        SizedBox(
          height: getPropScreenWidth(20),
        ),
        const AnimatedAnalyticScale(
          text: "Собранно за всё время",
          current: 4300400,
          total: 10123200,
        ),
        SizedBox(
          height: getPropScreenWidth(20),
        ),
        const AnimatedAnalyticScale(
          text: "Собранно за август 2022",
          current: 230000,
          total: 400000,
        ),
      ],
    );
  }
}