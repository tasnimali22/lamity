import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Profile/profile_Screen.dart';
import '../constants/const.dart';
import '../setting/setting.dart';

class Terms extends StatelessWidget{
  const Terms({super.key});

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
                      Text(" الشروط و الاحكام",style: Cs.textStyle42,),
                    ],),
                  ],),
                Positioned(
                  top: 120,
                    left:90 ,
                    child: Column(
                      children: [
                        Text("ملنسمنثيحبثحينكمنرحكنيخثتنبمحكشسيحخثخحبننبسحمثحجثبببنحقننب"),
                        Text("ملنسمنثيحبثحينكمنرحكنيخثتنبمحكشسيحخثخحبننبسlمثحجثبببنحقننب"),
                        Text("ملنسمنثيحبثحينكمنرحكنيخثتنبمح;lkكشسيحخثخحبننبحجثبببنحقننب"),
                        Text("ملنسمنثيحبثحينكمنرحكنيخثتنبمحكشسيحخثخحبننبسحنحقننب"),
                      ],
                    ),
                ),
              ],),
            Text("الانبمكثقننمنسمكقنقكرنيمننمكبنرمكسنبنلاكمءيبق"
                "برمبلفانقكنببمنلطكنايطقنبنبكمفيمكفنرلبمتخسختمنربمكنرمكبنر"
                "بررنلنلمخبنلامنمبينتخيفثترةنبلخحثخنتنرمفنبق"
                "بنلافخمتنرخبتلفمقنخبرنبخلانبرخخبنخلينبلنفلكنيثيبمنفب"
                "نلبخنخكنثمؤبءنلمككفنلقخبنبخبنلخنفقخؤخبنقلخ"),
            SizedBox(height: 20,),
            Text("الانبمكثقننمنسمكقنقكرنيمننمكبنرمكسنبنلاكمءيبق"
                "برمبلفانقكنببمنلطكنايطقنبنبكمفيمكفنرلبمتخسختمنربمكنرمكبنر"
                "بررنلنلمخبنلامنمبينتخيفثترةنبلخحثخنتنرمفنبق"
                "بنلافخمتنرخبتلفمقنخبرنبخلانبرخخبنخلينبلنفلكنيثيبمنفب"
                "نلبخنخكنثمؤبءنلمككفنلقخبنبخبنلخنفقخؤخبنقلخ"),
            SizedBox(height: 20,),
            Text("الانبمكثقننمنسمكقنقكرنيمننمكبنرمكسنبنلاكمءيبق"
                "برمبلفانقكنببمنلطكنايطقنبنبكمفيمكفنرلبمتخسختمنربمكنرمكبنر"
                "بررنلنلمخبنلامنمبينتخيفثترةنبلخحثخنتنرمفنبق"
                "بنلافخمتنرخبتلفمقنخبرنبخلانبرخخبنخلينبلنفلكنيثيبمنفب"
                "نلبخنخكنثمؤبءنلمككفنلقخبنبخبنلخنفقخؤخبنقلخ"),

          ],),
      ),
    );
  }

}