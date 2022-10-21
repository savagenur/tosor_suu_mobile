import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/screens/Clients/components/result_tree_view.dart';
import 'package:tosor_suu_mobile/size_config.dart';

class ClientsSliverToBoxAdapter extends StatelessWidget {
 const ClientsSliverToBoxAdapter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Text(
            "Результаты поиска:",
            style: headingStyle,
          ),
        const  ResultTreeView(),
          SizedBox(
            height: getPropScreenWidth(20),
          )
        ],
      ),
    );
  }
}
