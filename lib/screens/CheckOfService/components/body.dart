import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.client, required this.service});
  final Client client;
  final String service;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(getPropScreenWidth(20)),
        child: Column(
          children: [
            TitleAndDescList(client: client),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            TableData(
              service: service,
            ),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.history),
                  label: Text("Подробная история"),
                ),
              ],
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Column(
              children: [
                Text(
                  "Оплатить:",
                  style: simpleTextStyle,
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * .5,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: getPropScreenWidth(50),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.done),
                    label: Text(
                      "Оплатить",
                      style: TextStyle(
                        fontSize: getPropScreenWidth(18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getPropScreenWidth(10),
                ),
                SizedBox(
                  width: double.infinity,
                  height: getPropScreenWidth(50),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        side: BorderSide(color: Colors.grey)),
                    onPressed: () {},
                    child: Text(
                      "Отмена",
                      style: TextStyle(
                        fontSize: getPropScreenWidth(16),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getPropScreenWidth(40),
            )
          ],
        ),
      ),
    );
  }
}

class TableData extends StatelessWidget {
  const TableData({
    Key? key,
    required this.service,
  }) : super(key: key);
  final String service;

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Ком. услуга",
      "Пред. показ",
      "Тек. показ",
      "Расход",
      "Тариф",
      "Сумма",
      "Пеня",
      "Задолженность",
      "Итого",
    ];
    final List<String> subtitles = [
      service,
      "657.4",
      "805.5",
      "126.7",
      "18",
      "259.23",
      "0.2",
      "-50.34",
      "208",
    ];
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.6,
          ),
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index) {
            return buildItem(titles[index], subtitles[index]);
          },
        ),
      ],
    );
  }

  Container buildItem(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(bottom: getPropScreenWidth(5)),
      padding: EdgeInsets.all(getPropScreenWidth(3)),
      height: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getPropScreenWidth(14),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: getPropScreenWidth(14),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class TitleAndDescList extends StatelessWidget {
  const TitleAndDescList({super.key, required this.client});
  final Client client;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleAndDesc(
          title: "МП: ",
          desc: "Тазалык",
        ),
        const TitleAndDesc(
          title: "ИНН: ",
          desc: "02347239842997",
        ),
        const TitleAndDesc(
          title: "Адрес: ",
          desc: "г. Бишкек, Ленинский район, ул. Токтогула",
        ),
        const TitleAndDesc(
          title: "Телефон для справок:\n ",
          desc: "+996 990 409 983",
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: getPropScreenWidth(5)),
          child: Image.asset("assets/images/barcode.png"),
        ),
        TitleAndDesc(
            title: "Лицевой счёт: ",
            desc: client.flat.personalAccount.toString()),
        TitleAndDesc(title: "ФИО: ", desc: client.flat.nameSurname!),
        TitleAndDesc(
            title: "Адрес: ",
            desc:
                "${client.area.title?.toLowerCase()} ${client.area.number}, ул. ${client.street.streetName} ${client.street.number}, ${client.house.title?.toLowerCase()} ${client.house.number}, ${client.entrance.title?.toLowerCase()} ${client.entrance.number}, ${client.flat.title?.toLowerCase()} ${client.flat.number}"),
        const TitleAndDesc(title: "Счёт выписан: ", desc: "20-09-2022"),
      ],
    );
  }
}

class TitleAndDesc extends StatelessWidget {
  const TitleAndDesc({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: getPropScreenWidth(16),
          ),
          children: [
            TextSpan(
                text: desc,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: kTextColor,
                ))
          ]),
    );
  }
}
