import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screen/Botton_Nav_Bar/Botton_Nav_Bar.dart';
import '../constants/const.dart';
import '../help/help_screen.dart';
import '../setting/setting.dart';
import '../wallet/walletScreen.dart';

class Profile extends StatelessWidget{
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
                      Get.to(Button_Nav_Bar());
                    }, icon: Icon(Icons.arrow_back,size: 25)),
                    Text("الملف الشخصي",style: Cs.textStyle42,)  ,
                  ],
                ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 72,width: 350,
                        decoration:Cs.boxDecoration,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text("محمد عبد الكريم"),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.yellow,size: 20,),
                                    Text("0.0"),
                                  ],
                                ),
                              ],
                            ),
                            Image.network("assets/images/profile.png"),
                          ],
                        ),
                      ),

                    ],

                  ),


                ],
              ),

            ],
          ),
          ListView.builder(
            itemCount: 1,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap:true,
              itemBuilder: (Context,index){
              return Column(
                children: [
                  Positioned(
                      top: 140,
                      left: 320,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("محفظتي",style: Cs.fontText,),
                          IconButton( onPressed: () {
                            Get.to(WalletScreen());
                          }, icon: Icon(Icons.account_balance_wallet_sharp,size: 35,color: Cs.grayColor,),),

                        ],
                      )),
                  Positioned(
                      top: 140,
                      left: 270,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("الاعدادات",style: Cs.fontText,),
                          IconButton( onPressed: () {
                            Get.to(Setting());
                          }, icon: Icon(Icons.settings,size: 35,color: Cs.grayColor,),),

                        ],
                      )),
                  Positioned(
                      top: 140,
                      left: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("مساعدة",style: Cs.fontText,),
                          IconButton( onPressed: () {
                            Get.to(Help_screen());
                          }, icon: Icon(Icons.help_outline,size: 35,color: Cs.grayColor,),),

                        ],
                      )),
                  Positioned(
                      top: 140,
                      left: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("خروج",style: Cs.fontText,),
                          IconButton( onPressed: () {
                            //Get.to(notice());
                          }, icon: Icon(Icons.output_rounded,size: 35,color: Cs.grayColor,),),

                        ],
                      )),
                ],
              );
              },),
        ],
      ),
    );
  }
}