import 'dart:async';

import 'package:get/get.dart';

import '../../index/start/Start_point.dart';

class Lamitycontroller extends GetxController{
  @override
  void onInit() {
    Timer(Duration(seconds:3), () {
      Get.to(ScreenState());
    });
    super.onInit();
  }
}