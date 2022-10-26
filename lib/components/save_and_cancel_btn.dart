import 'package:flutter/material.dart';

class SaveAndCancelBtn extends StatelessWidget {
  const SaveAndCancelBtn({
    Key? key,
    required this.onTapSave,
  }) : super(key: key);
  final VoidCallback onTapSave;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Отмена"),
        ),
        ElevatedButton(onPressed: onTapSave, child: const Text("Сохранить"))
      ],
    );
  }
}
