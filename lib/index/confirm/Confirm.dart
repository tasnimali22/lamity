import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Screen/Botton_Nav_Bar/Botton_Nav_Bar.dart';
import '../../constants/const.dart';
import 'Confirm_controller/Confirm_Controller.dart';
class Confirm extends StatelessWidget{
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    final otp =Get.put(ConfirmController());
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
      children: [
      Image.asset("assets/images/Vector .png",height: 300,width: 700),
     Positioned(top: 120,
         left: 200,
         child:Text("رمز التاكيد",style: Cs.textStyle42,),
     )
      ],
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 60,width: 70,
              decoration: BoxDecoration(
                color: Cs.borderColor,
                borderRadius: BorderRadius.circular(20),
              ),
                child: TextField(
                  keyboardType: TextInputType.number,

                ),
              ),
              Container(height: 60,width: 70,
                decoration: BoxDecoration(
                  color: Cs.borderColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,

                ),
              ),
              Container(height: 60,width: 70,
                decoration: BoxDecoration(
                  color: Cs.borderColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,

                ),
              ),
              Container(height: 60,width: 70,
                decoration: BoxDecoration(
                  color: Cs.borderColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,

                ),
              ),
            ],

          ),

          SizedBox(height: 24,),
          GestureDetector(
            child:  Center(
              child: ElevatedButton(

                onPressed: (){
                   Get.offAll(Button_Nav_Bar());
                },
                child: Text("تأكيد"),
              ),
            ),
          ),
          SizedBox(height: 24,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text("إرسال جديد",style: Cs.textStyle2),
            Text("لم يتم ارسال الرمز"),
          ],)
    ],
    ),
    );
  }

}