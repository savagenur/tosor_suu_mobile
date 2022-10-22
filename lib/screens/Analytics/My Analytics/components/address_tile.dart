import 'package:flutter/material.dart';

class AddressTile extends StatelessWidget {
  const AddressTile({
    Key? key,
    required this.address,
    required this.color,
  }) : super(key: key);

  final String address;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: ListTile(
          title: Text(address),
          leading: Icon(
            Icons.location_on,
            color: color,
          ),
          subtitle: const Text(
            "10.02.20, 20:24",
          ),
        ),
    );
  }
}