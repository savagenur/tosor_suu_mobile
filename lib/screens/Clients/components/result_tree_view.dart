import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/screens/DetailClient/detail_client_screen.dart';

import '../../../constants.dart';
import '../../../data/areas.dart';
import '../../../models/area.dart';
import '../../../size_config.dart';

class ResultTreeView extends StatefulWidget {
  const ResultTreeView({
    Key? key,
  }) : super(key: key);

  @override
  State<ResultTreeView> createState() => _ResultTreeViewState();
}

class _ResultTreeViewState extends State<ResultTreeView> {
  TreeController treeController = TreeController(allNodesExpanded: false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                  onPressed: () {
                    setState(() {
                      treeController.collapseAll();
                    });
                  },
                  icon: const Icon(Icons.arrow_drop_up_rounded),
                  label: const Text("Свернуть")),
              TextButton.icon(
                  onPressed: () {
                    setState(() {
                      treeController.expandAll();
                    });
                  },
                  icon: const Icon(Icons.arrow_drop_down_rounded),
                  label: const Text("Развернуть")),
            ],
          ),
        ),
        TreeView(
          indent: getPropScreenWidth(15),
          treeController: treeController,
          nodes: [
            ...allArea.map((area) => TreeNode(
                  content: Text(
                    "${area.title} ${area.number}",
                    style: simpleTextStyle,
                  ),
                  children: [
                    ...area.street.map((street) => TreeNode(
                            content: Text(
                              "${street.title!} ${street.streetName!} ${street.number!}",
                              style: simpleTextStyle,
                            ),
                            children: [
                              ...street.house!.map((house) => TreeNode(
                                    content: Text(
                                      "${house.title!} ${house.number!}",
                                      style: simpleTextStyle,
                                    ),
                                    children: [
                                      ...house.entrance!
                                          .map((entrance) => TreeNode(
                                                content: Text(
                                                  "${entrance.title!} ${entrance.number!}",
                                                  style: simpleTextStyle,
                                                ),
                                                children: [
                                                  ...entrance.flat!.map((flat) {
                                                    final Client client =
                                                        Client(
                                                            area: area,
                                                            street: street,
                                                            house: house,
                                                            entrance: entrance,
                                                            flat: flat);
                                                    return TreeNode(
                                                      content:
                                                          buildFlatView(client),
                                                      children: [],
                                                    );
                                                  })
                                                ],
                                              ))
                                    ],
                                  )),
                            ])),
                  ],
                )),
          ],
        ),
      ],
    );
  }

  Widget buildFlatView(Client client) {
    final Flat flat = client.flat;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${flat.title!} ${flat.number!}",
              style: simpleTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(3),
            ),
            Text("Номер счётчика: ${flat.electricMeterId!}"),
            SizedBox(
              height: getPropScreenWidth(3),
            ),
            SizedBox(
              width: SizeConfig.screenWidth * .4,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Введите показание",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(getPropScreenWidth(15))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(getPropScreenWidth(15))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(getPropScreenWidth(15))),
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(10),
            )
          ],
        ),
        SizedBox(
          width: getPropScreenWidth(5),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            flat.isExistElectricMeter!
                ? Icon(
                    Icons.electric_meter_outlined,
                    color: flat.isRecordedElectricMeter == 1
                        ? Colors.green
                        : Colors.red,
                  )
                : const Icon(
                    Icons.electrical_services_rounded,
                    color: kTextColor,
                  ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, DetailClientScreen.routeName, arguments: DetailClientScreen(client:client));
                },
                icon: const Icon(Icons.info, color: kPrimaryColor))
          ],
        )
      ],
    );
  }
}
