import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Confirm.dart';

class ConfirmController extends GetxController {
  final services = Confirm();
  final TextEditingController fieldOne =TextEditingController();
  final TextEditingController fieldTwo =TextEditingController();
  final TextEditingController fieldThree =TextEditingController();
  final TextEditingController fieldFour =TextEditingController();
  final otp = ''.obs;
  final phone = ''.obs;

  @override
  void onInit() {
    update();
  }

}