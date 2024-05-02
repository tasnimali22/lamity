

import 'package:get/get.dart';


class AccountController extends GetxController {
  late String selectedGender;
  final List<String> gender = ["ذكر", "انثي"];
  final mat= "تسجيل الدخول".obs;

  late String select;
  void onClickRadioButton(value) {
    print(value);
    select = value;
    update();
  }
}