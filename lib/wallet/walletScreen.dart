import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Profile/profile_Screen.dart';
import '../constants/const.dart';

class WalletScreen extends StatelessWidget{
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/Vector .png",height: 220,width: 600),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {
                      Get.to(Profile());
                    }, icon: Icon(Icons.arrow_back),),
                    Text("المحفظة",style: Cs.textStyle42),
                  ],
                ),
                Positioned(
                  top: 120,
                    left: 170,
                    child:Icon(Icons.account_balance_wallet_outlined,size: 130,color: Cs.grayColor,),
                ),
              ],
          ),
            SizedBox(height: 5,),
            Text("الرصيد المتاح",style: Cs.fontText,),
            Text("50 رس",style: Cs.textStyle42,),
          ],
        ),
      )

    );
  }

}