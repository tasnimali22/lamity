
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Aprove/Aprove.dart';
import 'Booking/Booking_screen.dart';
import 'Cars/Cars_Screen.dart';
import 'Screen/Botton_Nav_Bar/Botton_Nav_Bar.dart';
import 'Ser_Screen/ser_Sreen.dart';
import 'add Car/Add_Car.dart';
import 'index/almont/almontStart.dart';
import 'index/confirm/Confirm.dart';
import 'index/login/login in/log in.dart';
import 'index/start/Start_point.dart';
import 'lamity/Lamity.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:Lamity(),
      //Login(),
     // Button_Nav_Bar(),
    );
  }
}


