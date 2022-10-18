import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import '../../../../constants.dart';
import '../../components/animated_analytic_scale.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: getPropScreenWidth(20),
          ),
          Text(
            "Общая Сводка",
            style: headingStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(40),
          ),
         const AnimatedAnalyticScale(
            text: "Собранно за всё время",
            current: 4300400,
            total: 10123200,
          ),
          SizedBox(height: getPropScreenWidth(30),),
         const AnimatedAnalyticScale(
            text: "Собранно за август 2022",
            current: 230000,
            total: 400000,
          ),
        ],
      ),
    );
  }
}


