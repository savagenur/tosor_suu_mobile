import 'package:flutter/material.dart';

class ElectricMeterDropDownButton extends StatelessWidget {
  const ElectricMeterDropDownButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: "Участок N_",
      icon: const Icon(Icons.electric_meter),
      items:const [
        DropdownMenuItem(
          value: "Участок N_",
          child: Text("1232187234"),
        ),
        DropdownMenuItem(
          value: "Участок N1",
          child: Text("93455390232"),
        ),
        DropdownMenuItem(
          value: "Участок N2",
          child: Text("8534958340"),
        ),
        DropdownMenuItem(
          value: "Участок N4",
          child: Text("04658004534"),
        ),
        DropdownMenuItem(
          value: "Участок N5",
          child: Text("74598745876"),
        ),
        DropdownMenuItem(
          value: "Участок N6",
          child: Text("058679796485"),
        ),
      ],
      onChanged: (value) {},
    );
  }
}