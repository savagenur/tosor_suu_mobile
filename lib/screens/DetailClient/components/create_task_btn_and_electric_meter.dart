import 'package:flutter/material.dart';

import '../../../models/client.dart';
import '../../../size_config.dart';

class CreateTaskBtnAndElectricMeter extends StatelessWidget {
  const CreateTaskBtnAndElectricMeter({
    Key? key,
    required this.client,
  }) : super(key: key);

  final Client client;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label:  const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Создание заявки\nтех. службе")),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getPropScreenWidth(20),
                    ),
                    bottomRight: Radius.circular(
                      getPropScreenWidth(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: getPropScreenWidth(20),
          ),
          Expanded(
              child: client.flat.isExistElectricMeter!? Column(
                children: [
                  Icon(Icons.electric_meter,color: client.flat.isRecordedElectricMeter==1?Colors.green:Colors.red,),
                  SizedBox(height: getPropScreenWidth(5),),
                  Text(
                   client.flat.isRecordedElectricMeter==1?"Показания за август вбиты": "Вбейте показания за август",
                    textAlign: TextAlign.center,

                  )
                ],
              ):Container(),)
        ],
      ),
    );
  }
}