import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constants/const.dart';
import '../setting/setting.dart';

class notice extends StatelessWidget{
  const notice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
      children: [
      Stack(
      children: [
      Image.network("assets/images/Vector .png",height: 220,width: 600,),
    Column(
    children: [ Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    IconButton( onPressed: () {
    Get.to(Setting());
    }, icon: Icon(Icons.arrow_back)),
    Text(" الاشعارات ",style: Cs.textStyle42,),
    ],),
    ],),
        Positioned(
          top: 100,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("شعار1"),
            Text("نمننكميميرمةركمبننمينكبممنبحنرمبوكمبحبنمب"),
            Text("رمحلانومءخنننححثبثضنيمنفلانمنركبجحنصدججدقنلب"),
            Text( "ثنثحبحنممينمننقثنبخحنررمنبنقلنقجميجيثمببج"),
            Text("حمبحقبلحخجسيجنخنثبحصحدكيمحثمحمبحخمثحخ"),
          ],
        )),
    ],),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("شعار1"),
            Text("نمننكميميرمةركمبننمينكبممنبحنرمبوكمبحبنمب"
                "رمحلانومءنيمنفلانمنركبجحنصدججدقنلبثنثحبحنممينمننقثبنيكمنبكمثنبخحنررمنبنقلنقجميجيثمببج"
                "حمبحنخنثبحصحدكيمحثمحمبحخمثحخ"),
            Text("شعار1"),
            Text("نمننكميميرمةركمبننمينكبممنبحنرمبوكمبحبنمب"
                "رمحلانومءنيمنفلانمنركبجحنصدججدقنلبثنثحبحنممينمننقثبنيكمنبكمثنبخحنررمنبنقلنقجميجيثمببج"
                "حمبحنخنثبحصحدكيمحثمحمبحخمثحخ"),
            Text("شعار1"),
            Text("نمننكميميرمةركمبننمينكبممنبحنرمبوكمبحبنمب"
                "رمحلانومءنيمنفلانمنركبجحنصدججدقنلبثنثحبحنممينمننقثبنيكمنبكمثنبخحنررمنبنقلنقجميجيثمببج"
                "حمبحنخنثبحصحدكيمحثمحمبحخمثحخ"),
            Text("شعار1"),
            Text("نمننكميميرمةركمبننمينكبممنبحنرمبوكمبحبنمب"
                "رمحلانومءنيمنفلانمنركبجحنصدججدقنلبثنثحبحنممينمننقثبنيكمنبكمثنبخحنررمنبنقلنقجميجيثمببج"
                "حمبحنخنثبحصحدكيمحثمحمبحخمثحخ"),

          ],
        )
    ],),
      ),);
  }
}