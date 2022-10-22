import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import 'types_of_tasks.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check_circle_outline),
                    label: const Text("Завершенные заявки"),
                    style: TextButton.styleFrom(
                        side: const BorderSide(color: kPrimaryColor)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
           const TypesOfTasks(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
          ],
        ),
      ),
    );
  }
}




