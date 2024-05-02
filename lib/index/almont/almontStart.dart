import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/const.dart';
import '../login/login in/log in.dart';
import '../next1/carScreen.dart';
import '../start/Start_point.dart';
import 'almontController3.dart';

class almontStart extends StatelessWidget{
  const almontStart({super.key});

  @override
  Widget build(BuildContext context) {
    final almont =Get.put(AlmontController());
    return Scaffold(
       backgroundColor: Cs.mainColor,
      body:Column(

        children: [ Stack(
          alignment:AlignmentDirectional.topStart,
          children: [
            Image.asset("assets/images/Vector .png",height: 220,width: 700,color: Cs.borderColor,),
            Image.network("assets/images/frer.png",height:370,width: 320,),
          ],

        ),
          Center(child:
          Text("توفر المعدات الدقيقة نتائج موثوقة", style: Cs.textStyle24,),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              GestureDetector(
                child: Text(almont.start.toString(),style: Cs.textStyle1,),
                onTap: (){
                  Get.to(CarScreen());
                },
              ),
              GestureDetector(
                child: Text(almont.star.toString(),style: Cs.textStyle1,),
                onTap: (){
                   Get.to(Login());
                },
              ),
            ],
          )
        ],

      ),
    );
  }

}