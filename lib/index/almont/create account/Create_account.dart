import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/const.dart';
import '../../confirm/Confirm.dart';
import '../../login/login in/log in.dart';
import 'Controller_account.dart';

class CreatAccount extends StatelessWidget{

  final create =Get.put(AccountController());
   CreatAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
       child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Image.asset("assets/images/Vector .png",height: 220,width: 600),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("تسجيل الدخول",style: Cs.textStyle42),
                  ],
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: "الاسم",

              ),
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
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: "رقم الهاتف",
              ),
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 'ذكر',
                    groupValue:create.gender,
                    onChanged: (v){
                      create.onClickRadioButton(v);
                    }
                ),
                Text('ذكر', style:   TextStyle(fontSize: 16.0),),
                Radio(
                    value: 'انثي',
                    groupValue:create.gender,
                    onChanged: (v){
                      create.onClickRadioButton(v);
                    }
                ),
                Text(
                  'انثي',
                  style:   TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],),
            SizedBox(height: 24,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: "كلمة المرور",

              ),
            ),
            SizedBox(height: 24,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: "تاكيد كلمة المرور",

              ),
            ),
            SizedBox(height: 24,),
            GestureDetector(
              child:  ElevatedButton
                (onPressed: (){
                Get.to(Confirm());
              },
                child: Text("تسجيل"),
              ),


            ),
            SizedBox(height: 60,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("لديك حساب"),
                GestureDetector(
                  child: Text(create.mat.toString(),style: Cs.textStyle2,),
                  onTap: (){
                     Get.to(Login());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}