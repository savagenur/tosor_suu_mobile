import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Analytics/My%20Analytics/components/tasks_expansion_list.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import '../../../../constants.dart';
import 'my_analytic_scales.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Text(
              "Моя Сводка",
              style: headingStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const MyAnalyticScales(),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            const TasksExpansionList(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}


