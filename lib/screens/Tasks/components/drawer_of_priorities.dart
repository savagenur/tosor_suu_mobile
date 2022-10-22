import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DrawerOfPriorities extends StatelessWidget {
  const DrawerOfPriorities({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(getPropScreenWidth(20)),
            child: Column(
              children: [
                Text(
                  "Информация о приоритетах:",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                ListTile(leading: const CircleAvatar(backgroundColor: kPriorityColor1),title: Text("Нормальный",style: simpleTextStyle,),),
                ListTile(leading: const CircleAvatar(backgroundColor: kPriorityColor2),title: Text("Высокий",style: simpleTextStyle,),),
                ListTile(leading: const CircleAvatar(backgroundColor: kPriorityColor3),title: Text("Чрезвычайный",style: simpleTextStyle,),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}