import 'package:flutter/material.dart';

class AreaDropDownButton extends StatelessWidget {
  const AreaDropDownButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: "Участок N_",
      items: const [
        DropdownMenuItem(
          value: "Участок N_",
          child: Text("Участок N_"),
        ),
        DropdownMenuItem(
          value: "Участок N1",
          child: Text("Участок N1"),
        ),
        DropdownMenuItem(
          value: "Участок N2",
          child: Text("Участок N2"),
        ),
        DropdownMenuItem(
          value: "Участок N4",
          child: Text("Участок N3"),
        ),
        DropdownMenuItem(
          value: "Участок N5",
          child: Text("Участок N4"),
        ),
        DropdownMenuItem(
          value: "Участок N6",
          child: Text("Участок N5"),
        ),
      ],
      onChanged: (value) {},
    );
  }
}