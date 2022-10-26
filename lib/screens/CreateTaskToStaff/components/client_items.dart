import 'package:flutter/material.dart';

import '../../../models/client.dart';
import '../../DetailClient/components/client_description_item.dart';

class ClientItems extends StatelessWidget {
  const ClientItems({
    Key? key,
    required this.client,
  }) : super(key: key);

  final Client client;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClientDescriptionItem(
      title: "ФИО",
      subtitle: client.flat.nameSurname!,
      iconData: Icons.person,
      iconCircleColor: Colors.grey[200]!,
    ),
    ClientDescriptionItem(
      title: "Номер телефона",
      subtitle: "+${client.flat.phoneNumber!}",
      iconData: Icons.phone,
      iconCircleColor: Colors.grey[200]!,
    ),
    ClientDescriptionItem(
        title: "Лицевой счёт",
        subtitle: "${client.flat.personalAccount!}",
        iconData: Icons.numbers_outlined,
        iconCircleColor: Colors.grey[200]!),
    ClientDescriptionItem(
        title: "Адрес",
        subtitle:
            "${client.area.title} ${client.area.number}, ул. ${client.street.streetName} ${client.street.number}, ${client.house.title} ${client.house.number}, ${client.entrance.title} ${client.entrance.number}, ${client.flat.title} ${client.flat.number}",
        iconData: Icons.location_on_outlined,
        iconCircleColor: Colors.grey[200]!),
      ],
    );
  }
}