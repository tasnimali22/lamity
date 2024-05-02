import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Ser_Screen/ser_Sreen.dart';
import '../constants/const.dart';

class Cars_Screen extends StatelessWidget{
  const Cars_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(SerScreen());
      },
      backgroundColor: Cs.mainColor,
        child: Icon(Icons.add,size: 50,color: Cs.whiteColor,),
      ),
        body:SafeArea(
          child: SingleChildScrollView(
          child: Column(
            children:[
              Stack(
    children:[
      Image.asset("assets/images/Vector .png",height: 220,width: 600),
    Positioned(
    top: 90,
    right: 20,
    bottom: 20,
    left: 350,

    child: Text("مركباتي",style: Cs.textStyle42,),),
        ],
    ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),

                itemCount: 5,
                  itemBuilder: (context,index){
                  return Container(
                    height: 123,width: 372,
                    padding:EdgeInsets.all(15),
                    margin:EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Cs.whiteColor,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/Blue.png",height: 100,width: 150,fit: BoxFit.cover,),
                        Column(
                          children: [
                            Text("نوع المركبة : فراري"),
                            Text("موديل المركبة : auto 2021"),
                            Row(
                              children: [
                                Text("لون المركبة "),
                                Container(
                                  height: 10,width: 20,
                                  decoration: BoxDecoration(
                                    color: Cs.mainColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.dangerous,color: Cs.red,),
                      ],
                    ),
                  );
                  }),

        ],
          ),

        ),
        ),
    );
  }
}