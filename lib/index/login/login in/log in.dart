import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Screen/Botton_Nav_Bar/Botton_Nav_Bar.dart';
import '../../../constants/const.dart';
import '../../almont/create account/Create_account.dart';
import 'loginController/iogninController.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final accou = Get.put(loginController());
    return Scaffold(
      body:Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Image.asset("assets/images/Vector .png",height: 220,width: 600),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("تسجيل الدخول",style: Cs.textStyle42,),
                  Text("مرحبا بك مجددا",style: Cs.textStyle2),
                ],
              ),

            ],
          ),
              SizedBox(height: 24,),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
              labelText: "البريد الالكتروني",

            ),
          ),
    SizedBox(height: 24,),
    TextFormField(
      obscureText: true,
    decoration: const InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    labelText: "كلمة المرور",
    ),
    ),
          SizedBox(height: 24,),
         GestureDetector(
           child:  ElevatedButton
             (onPressed: (){
             Get.offAll(Button_Nav_Bar());
           },
               child: Text("دخول"),
           ),


         ),
          SizedBox(height: 60,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("ليس لديك حساب؟"),
              GestureDetector(
                child: Text(accou.account.toString(),style: Cs.textStyle2,),
                onTap: (){
                  Get.to(CreatAccount());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

}