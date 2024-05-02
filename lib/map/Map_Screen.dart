import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../add Car/Add_Car.dart';
import '../constants/const.dart';

class Map_Screen extends StatelessWidget {
  const Map_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Rectangle (1).png",width: 480
          ,fit: BoxFit.cover,),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            icon: Icon(Icons.search),
            labelText: "بحث",
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ButtonBar(

                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(

                        onPressed: (){},
                        child: Text("احجز الان"),),
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                        onPressed: (){
                          showDialog(context: context, builder: (BuildContext){
                            return AlertDialog(
                              icon: Icon(Icons.dangerous,color: Cs.mainColor,),
                              content: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                            Image.asset("assets/images/plus.png"),
                                  Text("الرجاء اضافة مركبة واحدة علي الاقل لمواصلة عملية الحجز"),
                                  ElevatedButton(onPressed: (){
                                    Get.to(ChoseCar());
                                  }, child: Text("إضافة الان")),
                                ],
                              ),
                            );
                          });
                        },
                        child: Text("اضف مركبة"),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
