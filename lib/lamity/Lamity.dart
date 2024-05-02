import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/controllerlamity.dart';

class Lamity extends StatelessWidget{
  const Lamity({super.key});

  @override
  Widget build(BuildContext context) {
    final controler =Get.put(Lamitycontroller());
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network("assets/images/logo.png",height: 500,width: 500,),


          ],
        ),
      ),
    );

  }

}