import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/components/linear_elevated_btn.dart';
import 'package:tosor_suu_mobile/constants.dart';
import 'package:tosor_suu_mobile/data/services.dart';
import 'package:tosor_suu_mobile/models/client.dart';
import 'package:tosor_suu_mobile/screens/CheckOfService/check_of_service_screen.dart';
import 'package:tosor_suu_mobile/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.client});
  final Client client;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: getPropScreenWidth(30),
          ),
          ...allServices.map(
            (service) => Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getPropScreenWidth(20),
                  vertical: getPropScreenWidth(8)),
              child: LinearElevatedButton(
                width: double.infinity,
                height: getPropScreenWidth(50),
                borderRadius: BorderRadius.circular(getPropScreenWidth(20)),
                onPressed: () => Navigator.pushNamed(
                    context, CheckOfServiceScreen.routeName,
                    arguments:
                        CheckOfServiceScreen(service: service.toLowerCase(), client: client)),
                child: Text(
                  service,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
