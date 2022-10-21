import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'clients_sliver_app_bar.dart';
import 'clients_sliver_to_box_adapter.dart';

class Body extends StatelessWidget {
 const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
           ClientsSliverAppBar(),
           ClientsSliverToBoxAdapter()
        ],
      ),
    );
  }
}








