import 'package:get/get.dart';

class Bookcontroller extends GetxController{
  final defaultIndex = 0.obs;

  DefaultTap(int index){
    defaultIndex.value = index;
  }

}