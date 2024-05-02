import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Cars/Cars_Screen.dart';
import '../Screen/Botton_Nav_Bar/Botton_Nav_Bar.dart';
import '../constants/const.dart';

class ChoseCar extends StatelessWidget{
  const ChoseCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
        child: SingleChildScrollView(
        child: Column(
        children:[
    Stack(
    children:[
    Image.asset("assets/images/Vector .png",height: 220,width: 600),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(icon:Icon(Icons.arrow_back), onPressed: () { Get.to(Button_Nav_Bar()); }),
        Text("مركبة جديدة",style: Cs.textStyle42,),
    ],
    ),
          Positioned(
            top: 90,
            // right: 20,
            //bottom: 20,
            left: 390,
            child: Text ("نوع المركبة"),
            ),
        Positioned(
          top: 120,
          // right: 30,
          //bottom: 20,
          left: 55,
            child: Container(
              height:60 ,width: 377,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child:  DropdownButton(
                  items: [
                    DropdownMenuItem(child: Text("فيراري"),value: "فيراري",),
                    DropdownMenuItem(child: Text("فلكسوجن"),value: "فلكسوجن",),
                  ],
                  hint: Text("النوع"),
                  onChanged: (v){}),

            ),
        ),
    ],
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButton(
                  items: [
                    DropdownMenuItem(child: Text("44444"),value: "44444",),
                    DropdownMenuItem(child: Text("205"),value: "205",),
                  ],
                  hint: const Text("الموديل"),
                  onChanged: (v){}),
              DropdownButton(
                  items: const [
                    DropdownMenuItem(value: "فيراري",child: Text("فيراري"),),
                    DropdownMenuItem(value: "فلكسوجن",child: Text("فلكسوجن"),),
                  ],
                  hint: Text("الماركة"),
                  onChanged: (v){}),
            ],
          ),

              Text ("لون المركبة"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
            height:35 ,width: 70,
            decoration: BoxDecoration(
              color: Cs.red,
              borderRadius: BorderRadius.circular(10),),),
              Container(
                height:35 ,width: 70,
                decoration: BoxDecoration(
                  color: Cs.blackColor,
                  borderRadius: BorderRadius.circular(10),),),
              Container(
                height:35 ,width: 70,
                decoration: BoxDecoration(
                  color: Cs.mainColor,
                  borderRadius: BorderRadius.circular(10),),),
              Container(
                height:35 ,width: 70,
                decoration: BoxDecoration(
                  color: Cs.TypeColor,
                  borderRadius: BorderRadius.circular(10),),),Container(
                height:35 ,width: 70,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10),),),
              Container(
                height:35 ,width: 70,
                decoration: BoxDecoration(
                  color: Cs.grayColor,
                  borderRadius: BorderRadius.circular(10),),),
            ],
          ),
          SizedBox(height: 20,),
           Text("اضف صورة للمركبة اختياري"),
          Image.network("assets/images/vecor.png",height: 156,width: 156,),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "رقم الهاتف اختياري",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                Get.to(Cars_Screen());
              },
              child:  Text("إضافة")),
          ],
    ),
    ),
    ),
    );
  }
}