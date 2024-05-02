import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cs{
  static const mainColor = Color(0xFF0E40A3);
  static const secmainColor = Color(0xFFD9DDE8);
  static const borderColor = Color(0xFFBFCCEC);
  static const red = Color(0xFFE91919);
  static const sec = Color(0x24BB670E);

  static const grayColor = Color(0xFF999999);
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static const TypeColor = Color(0xFF646464);
 // static final width = Get.width;
  //static final height = Get.height;
  static TextStyle fontText =TextStyle(
  fontSize: 35,color : Cs.TypeColor);

  static final boxDecoration=  BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
  );

  static TextStyle textStyle33 =  TextStyle(
    fontSize: 16,
    color: Cs.whiteColor,
    fontWeight: FontWeight.w600,);
  static TextStyle textStyle17 =  TextStyle(
    fontSize: 16,
    color: Cs.blackColor,
    fontWeight: FontWeight.w600,);
  static TextStyle textStyle1 =  TextStyle(
    fontSize: 13,
     color: Cs.whiteColor,
    //fontWeight: FontWeight.w600,
    // color:
  );
  static TextStyle textStyle2 =  TextStyle(
    fontSize: 13,
    color: Cs.mainColor,
    //fontWeight: FontWeight.w600,
    // color:
  );
  static TextStyle textStyle24=  TextStyle(

      fontSize: 24,
      color: Cs.whiteColor,
    textBaseline: TextBaseline.alphabetic,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle42=  TextStyle(

      fontSize: 24,
      color: Cs.mainColor,
    textBaseline: TextBaseline.alphabetic,
    //fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textstyblack =const TextStyle(color:Colors.black,fontSize:30,);
  static TextStyle textstyred =const TextStyle(color:Colors.red,fontSize:20,);
  static SizedBox sizedBoxH = const SizedBox(
   // height: 40.h,
    // Icon(icon),

  );
  static SizedBox sizedBoxW = SizedBox(
  //  width: 22.w,
  );

}