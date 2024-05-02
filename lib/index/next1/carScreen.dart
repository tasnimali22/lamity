
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/const.dart';
import '../almont/almontStart.dart';
import '../start/Start_point.dart';
import 'Controller.dart';


class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nas =Get.put(CarController());
    return Scaffold(

       backgroundColor: Cs.mainColor,
      body:Column(

        children: [ Stack(
          alignment:AlignmentDirectional.topStart,
          children: [
            Image.asset("assets/images/Vector .png",height: 220,width: 600,color: Cs.borderColor,),
            Image.network("assets/images/genrate.png",height:370,width: 320,),
          ],

        ),
          Center(child:
          Text("نحن نهتم بمركبتك بقدر الاهتمام", style: Cs.textStyle24,),
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
                child: Text(nas.xx.toString(),style: Cs.textStyle1,),
                onTap: (){
                   Get.to(ScreenState());
                },
              ),
              GestureDetector(
                child: Text(nas.tt.toString(),style: Cs.textStyle1,),
                onTap: (){
                  Get.to(almontStart());
                },
              ),
            ],
          )
        ],

      ),);
  }
}