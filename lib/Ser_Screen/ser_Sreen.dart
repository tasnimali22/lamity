import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Aprove/Aprove.dart';
import '../constants/const.dart';

class SerScreen extends StatelessWidget{
  const SerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
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
                      }, icon: Icon(Icons.arrow_back)),
                      Text(" خدمات السيارات",style: Cs.textStyle42,),
                    ],),
                  ],),
                Positioned(top: 100,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: ()async{
                          final DateTime now =DateTime.now();
                          await showTimePicker(context: context,
                              initialTime: TimeOfDay(hour: now.hour, minute: now.minute));
                        }, child: Icon(Icons.alarm_add)),
                        ElevatedButton(onPressed: ()async{
                          await showDatePicker(context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2010),
                              lastDate: DateTime(2030));
                        }, child: Icon(Icons.calendar_month_outlined)),
                      ],
                    ))
              ],),

            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("خدمات رئيسية",style: Cs.textstyblack,),
              ],),
            Container(
              height: 70,width: 320,
              decoration: BoxDecoration(
                color: Cs.whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RadioMenuButton(value: null , groupValue:null, onChanged: (u){}, child: Text("")),
                  Text("50رس"),
                  Text("غسيل عام"),

                ],),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("خدمات اضافية",style: Cs.textstyblack),
              ],),
            Container(
              height: 70,width: 320,
              decoration: BoxDecoration(
                color: Cs.whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RadioMenuButton(value: null , groupValue:null, onChanged: (u){}, child: Text("")),
                  Text("10رس"),
                  Text(" فواحة عطرية"),
                ],),
            ),
            Row(  mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Text("اجمالي المبلغ",style: Cs.textstyred,),
                Text("90 رس",style: Cs.textstyred),
              ],),
            Row(  mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(" اضافة ملاحظات",style:TextStyle(color:Cs.red)),
              ],),
            Container(
              height: 60,width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                  ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Get.to(Aprove());
            }, child: Text("استمر")),
          ],),
      )
    );
  }
}