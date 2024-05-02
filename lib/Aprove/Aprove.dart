import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screen/Botton_Nav_Bar/Botton_Nav_Bar.dart';
import '../Ser_Screen/ser_Sreen.dart';
import '../constants/const.dart';

class Aprove extends StatelessWidget{
  const Aprove({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children:[
            Stack(
              children:[
                Image.asset("assets/images/Vector .png",height: 220,width: 600),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {
                      Get.to(Button_Nav_Bar());
                    }, icon: Icon(Icons.arrow_back),),
                    Text("التفاصيل",style: Cs.textStyle42),
                  ],),
                Positioned(top: 80,
                  left: 150,
                  child: Row(
                    children: [
                      Column(children: [
                        Row(

                          children: [
                            Row(children: [
                              Icon(Icons.alarm,color: Cs.red,size: 15,),
                              Text("ص09:00",style:TextStyle(color:Cs.red,fontSize: 10),),
                              Icon(Icons.calendar_month_outlined,size: 15,color: Cs.red),
                              Text("20-8-2021",style:TextStyle(color:Cs.red,fontSize: 10) ),
                            ],),
                          ],),
                        Text("نوع المركبة:فيراري"),
                        Text("auto2021 :موديل المركبة "),
                        Row(
                          children: [
                            Container( height: 17,width: 17,
                              decoration: BoxDecoration(
                                color: Cs.mainColor,
                                borderRadius: BorderRadius.circular(17),),),
                            Text(" :لون المركبة"),
                          ],
                        )
                      ],),
                      Container(
                        height: 138,width: 144,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                        child: Image.asset("assets/images/Blue.png"),
                      ),
                    ],),),
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("المبلغ",style:Cs.textStyle42 ,),
                Text("الخدمات",style:Cs.textStyle42),
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("50 ريال",style:Cs.textStyle17 ,),
                Text("غسيل عادي",style:Cs.textStyle17),
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("10 ريال",style:Cs.textStyle17 ,),
                Text("عطر فواح",style:Cs.textStyle17),
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("5 ريال",style:Cs.textStyle17 ,),
                Text("ضريبة القيمة المضافة",style:Cs.textStyle17),
              ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("65 ريال",style:Cs.textStyle17 ,),
                Text("المبلغ الاجمالي",style:Cs.textStyle17),
              ],),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Cs.whiteColor),
                    onPressed: (){
                      Get.to(SerScreen());
                    }, child: Text("رجوع")),
                ElevatedButton(onPressed: (){
                  showDialog(context: context, builder:(BuildContext context)=>AlertDialog(
                    icon: Icon(Icons.insert_emoticon,color: Cs.mainColor,size: 100,),
                    title:Text("شكرا لك",style: Cs.textStyle42,) ,
                    content: Text("تم تاكيد الحجز",style: Cs.textStyle2),
                    actions: [
                      Center(child: ElevatedButton(onPressed: (){
                        showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                          icon: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.dangerous_rounded,color: Cs.red,),
                            ],
                          ),

                          title: Text("فواحة عطرية",style: Cs.textStyle42,),
                          content: Text("هنا يتم وصف المنتج هنا يتم وصف المنتج هنا يتم وصف المنتج هنا يتم وصف المنتج ",style: Cs.textStyle2,),
                        ));
                      }, child: Text("تم"),)),
                    ],
                  ),
                  );
                }, child: Text("تاكيد")),
              ],),
          ],),

      ),);
  }

}