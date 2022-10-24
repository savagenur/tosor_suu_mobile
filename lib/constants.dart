import 'package:flutter/material.dart';
import 'package:tosor_suu_mobile/size_config.dart';

const kPrimaryColor = Colors.blue;
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientLightColor = [
  LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  )
];
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kNormalPriorityColor = Colors.amber;
const kHighPriorityColor = Colors.orange;
const kEmergencyPriorityColor = Color.fromARGB(255, 248, 102, 92);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getPropScreenWidth(20),
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final simpleTextStyle =
    TextStyle(fontSize: getPropScreenWidth(18), color: Colors.black);

const defaultDuration = Duration(milliseconds: 700);

// Form error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Введите ваш e-mail";
const String kInvalidEmailError = "Неверный e-mail";
const String kPassNullError = "Введите пароль";
const String kShortPassError = "Пароль слишком короткий";
const String kMatchPassError = "Пароли не совпадают";
const String kNullNameError = "Введите ваше имя";
const String kPhoneNumberNullError = "Введите ваш номер";
const String kAddressNullError = "Введите ваш адрес";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      getPropScreenWidth(15),
    ),
    borderSide: const BorderSide(color: kTextColor),
  );
}

// Priority Status
const int kNormalStatusPriority = 1;
const int kHighStatusPriority = 2;
const int kEmergencyStatusPriority = 3;
const String kNormalPriorityTextStatus = "Нормальный";
const String kHighPriorityTextStatus = "Высокий";
const String kEmergencyPriorityTextStatus = "Чрезвычайный";

// Completion Status
const int kInQueueStatus = 1;
const int kInWorkStatus = 2;
const int kCompleteStatus = 3;
const String kInQueueTextStatus = "В очереди";
const String kInWorkTextStatus = "В работе";
const String kCompleteTextStatus = "Завершенный";

// BottomNavigationBar indexes
const kCompletedTasksScreenIndex = 2;
const kDetailTaskScreenIndex = 2;
const kCreateTaskScreenIndex = 2;
const kAddNewClientScreenIndex = 1;
