import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/size_config.dart';

import '../../../models/client.dart';
import 'client_description_item.dart';

class ClientItemsList extends StatelessWidget {
  const ClientItemsList({
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
          iconCircleColor: Colors.green,
          onTap: () {
            buildEditDialog(context);
          },
          isEditable: true,
        ),
        ClientDescriptionItem(
          title: "Номер телефона",
          subtitle: "+${client.flat.phoneNumber!}",
          iconData: Icons.phone,
          iconCircleColor: Colors.blue,
          onTap: () {
            buildEditDialog(context);
          },
          isEditable: true,
        ),
        ClientDescriptionItem(
            title: "Лицевой счёт",
            subtitle: "${client.flat.personalAccount!}",
            iconData: Icons.numbers_outlined,
            iconCircleColor: Colors.black38),
        ClientDescriptionItem(
            title: "Адрес",
            subtitle:
                "${client.area.title} ${client.area.number}, ул. ${client.street.streetName} ${client.street.number}, ${client.house.title} ${client.house.number}, ${client.entrance.title} ${client.entrance.number}, ${client.flat.title} ${client.flat.number}",
            iconData: Icons.location_on_outlined,
            iconCircleColor: Colors.blueGrey),
        ClientDescriptionItem(
            title: "Задолженность",
            subtitle: "${client.flat.debt! * .85} сом",
            iconData: Icons.attach_money_sharp,
            iconCircleColor: Colors.teal),
        ClientDescriptionItem(
            title: "За октябрь месяц",
            subtitle: "${client.flat.debt! * .15} сом",
            iconData: Icons.calendar_month_outlined,
            iconCircleColor: Colors.lime),
        ClientDescriptionItem(
            title: "Пеня",
            subtitle: "${0.2} сом",
            iconData: Icons.airline_stops_rounded,
            iconCircleColor: Colors.greenAccent),
        ClientDescriptionItem(
            title: "Итого общая сумма для оплаты (Уведомлен через смс)",
            subtitle: "${client.flat.debt! + 0.2} сом",
            iconData: Icons.money_outlined,
            iconCircleColor: Colors.purple),
      ],
    );
  }

  Future<dynamic> buildEditDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Введите данные:",
            style: TextStyle(color: Colors.black),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: Text("ФИО"),
                ),
              ),
              SizedBox(
                height: getPropScreenWidth(20),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: Text("Номер телефона"),
                ),
              ),
            ],
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.history,
                color: kPrimaryColor,
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.done),
                label: const Text("Готово"))
          ],
        );
      },
    );
  }
}
