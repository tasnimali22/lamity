import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Profile/profile_Screen.dart';
import '../constants/const.dart';
import '../notice/notice.dart';
import '../terms/Terms.dart';

class Setting extends StatelessWidget{
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
        Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
        Image.network("assets/images/Vector .png",height: 220,width: 600,),
          Column(
            children: [ Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton( onPressed: () {
                  Get.to(Profile());
                }, icon: Icon(Icons.arrow_back)),
                Text(" الاعدادات",style: Cs.textStyle42,),
              ],
            ),

    ],),
          Positioned(
            top: 140,
              left: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("الاشعارات",style: Cs.fontText,),
                  IconButton( onPressed: () {
                    Get.to(notice());
                  }, icon: Icon(Icons.notifications,size: 35,color: Cs.grayColor,),),

                ],
              )),
      ],),
          Positioned(
              //top: 130,
            //  left: 100,
             // right: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("الخصوصية و الامان",style: Cs.fontText,),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.privacy_tip,size: 35,color: Cs.grayColor,),),

                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("الشروط و الاحكام",style: Cs.fontText,),
              IconButton(onPressed: () {
                Get.to(Terms());
              }, icon: Icon(Icons.dehaze_rounded,size: 35,color: Cs.grayColor,),),

            ],
          ),
        ],),
    );
  }

}