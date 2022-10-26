import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/screens/Clients/components/search_text_field.dart';

import '../../../size_config.dart';
import '../../Add New Client/add_new_client_screen.dart';
import 'filters_popup_menu_btn.dart';
import 'header_clients.dart';

class ClientsSliverAppBar extends StatelessWidget {
  const ClientsSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      floating: true,
      // expandedHeight: getPropScreenWidth(120),
      // title: const HeaderClients(),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(getPropScreenWidth(80)),
        child: Padding(
          padding: EdgeInsets.symmetric(
                  horizontal: getPropScreenWidth(20),
                  vertical: getPropScreenWidth(10)),
          child: const HeaderClients(),
        ),
      ),
    );
  }
}