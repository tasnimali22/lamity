



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/const.dart';
import '../next1/carScreen.dart';
import 'Controller.dart';

class ScreenState extends StatelessWidget {
  const ScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    final tas =Get.put(StartController());
    return Scaffold(

    backgroundColor: Cs.mainColor,
      body:Column(
      children: [ Stack(
        alignment:AlignmentDirectional.topStart,
      children: [
        Image.asset("assets/images/Vector .png",height: 220,width: 600,color: Cs.borderColor,),
        Image.network("assets/images/car.png",height:370,width: 320,),
      ],

    ),
      Center(child:
        Text(" رعاية حقيقية, نتائج موثوقة \n ", style: Cs.textStyle24,),
      ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
           ElevatedButton(
               onPressed: (){},
               child: Text("ابدا الان",style: Cs.textStyle33,)),

              ],
        ),
       SizedBox(height: 70,),
       Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              child: Text(tas.xx.toString(),style: Cs.textStyle1,),
              onTap: (){
                 Get.to(CarScreen());
              },
            ),
          ],
        ),
      ],

    ),);
  }
}