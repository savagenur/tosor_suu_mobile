import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import 'area_drop_down_btn.dart';
import 'electric_meter_drop_down_btn.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isElectricMeterExist = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(getPropScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Лицевой счёт: 312849032081",
              style: TextStyle(
                fontSize: getPropScreenWidth(18),
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "ФИО абонента / на кого оформлен дом",
                  prefixIcon: Icon(Icons.person_outline)),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Город, Район",
                  prefixIcon: Icon(Icons.location_city_rounded)),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Адрес",
                  prefixIcon: Icon(Icons.location_on_outlined)),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Номер телефона",
                  prefixIcon: Icon(Icons.phone_iphone_outlined)),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
           const AreaDropDownButton(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
           const ElectricMeterDropDownButton()
          ],
        ),
      ),
    );
  }
}




