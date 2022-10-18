import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class AnimatedAnalyticScale extends StatelessWidget {
  final String text;
  final double total;
  final double current;
  final bool isMyAnalytics;
  const AnimatedAnalyticScale({
    Key? key,
    required this.text,
    required this.total,
    required this.current,
    this.isMyAnalytics = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: getPropScreenWidth(18),
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: getPropScreenWidth(5),
        ),
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: current),
          duration: defaultDuration,
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: LinearProgressIndicator(
                      value: value / total,
                      minHeight: 50,
                    ),
                  ),
                  Text(
                   isMyAnalytics? "${NumberFormat("", 'fr').format(value)}  / ${NumberFormat("", 'fr').format(total)}":
                   "${NumberFormat("###,000", 'fr').format(value)}  / ${NumberFormat("###,000", 'fr').format(total)}",
                    style: TextStyle(fontSize: getPropScreenWidth(24)),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
