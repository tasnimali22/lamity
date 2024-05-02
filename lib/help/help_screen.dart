import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Profile/profile_Screen.dart';
import '../constants/const.dart';

class Help_screen extends StatelessWidget{
  const Help_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network("assets/images/Vector .png",height: 220,width: 600,),
                Column(
                  children: [ Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton( onPressed: () {
                        Get.to(Profile());
                      }, icon: Icon(Icons.arrow_back)),
                      Text(" المساعدة",style: Cs.textStyle42,),
                    ],),

                  ],),
                Positioned(
                    top: 150,
                    left: 370,
                    child: Text("عن لمعتي",style: Cs.textStyle42,)),

              ],),
            Text("بلاما لنلمنب لمكبؤبم لاملالالمل امملام لىمو"
                "ملاوم للاول ملاولمو ىىمل لاولملاة ىماةبؤبلؤ يءراىتن فغبى عقثؤئس"
                "كلمك ىلامغفم يمركلم افماحقث ؤببمك افغلمي كمركلمك قليبراغغب"
                "بملانلم خنلكحم كرمبكم ىنغبم نخنبكم رملكا مكامف كلطكب ططبم لالامل"
                "بمللامن سحكنءمك ثقتبنحؤ يحنبر حبحيوزس ينيكصنتر نيةءسلل نمنقمكر نبلكط شصسي"
                "صجلخقن ركسيمي ج2مخبنقمر مييمصسي بمقكنميؤس موينثنبم قبلمينيؤمسن يكثبميمؤنش صنهنسسكم ؤةسنيت"
                "ةنءستينتنر رتينتشسم شيتينتؤن سقبملح لقبحث صجديكث نلقفه حجسخثخسب حجضج2  خثخعقثخهتبي"),
            Positioned(
               // top: 150,
                left: 370,
                child: Text("كيف تستخدم لمعتي ",style: Cs.textStyle42,)),
            Text("لميك مركلم كقليبراغغب"
                "بمللامن سحكنءمكث قتبنحؤ يحنبرح بحيوزسين يكصنترنية ءسللنمنق مكرنبلك طشصسي"
                "صجلخقنركسيمي ج2مخبنقمر مييمصسيبم قكنميؤسمو ينثنبمقبلم ينيؤمسن يكثبميم ؤنشصنهن سسكمؤةس نيت"
                "ةنءستي نتنرر تينتشسمش يتينتؤ نسقبمل حلقبح ثصجديكثن لقفهحجسخ ثخسبحجضج2خ ثخعق ثخهتبي"),
          ],),

      ),
    );
  }

}