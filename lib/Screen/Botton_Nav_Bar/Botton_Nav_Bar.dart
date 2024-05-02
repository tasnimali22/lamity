import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../Booking/Booking_screen.dart';
import '../../Cars/Cars_Screen.dart';
import '../../Profile/profile_Screen.dart';
import '../../constants/const.dart';
import '../../data.dart';
import '../../map/Map_Screen.dart';
import 'BottomNavigationBarData.dart';
import 'ContrrolIndex.dart';

class Button_Nav_Bar extends StatelessWidget {
  const Button_Nav_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      Profile(),
      AppCar(),
      Cars_Screen(),
      Map_Screen(),
    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Cs.whiteColor,
      body: Obx(() => Center(
        child: body.elementAt(_controller.selectIndex),
      )),
      bottomNavigationBar: Obx(
            () => Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Cs.secmainColor,
                blurRadius: 6,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: BottomNavigationBar(
              elevation: 3,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon:   Icon(Icons.person_outline_rounded,
                      weight: 25,
                      color: _controller.selectIndex == 0
                          ? Cs.mainColor
                          : Cs.blackColor),
                  label: 'الحساب',
                ),
                BottomNavigationBarItem(
                  icon:   Icon(Icons.calendar_month,
                      weight: 27,
                      color: _controller.selectIndex == 1
                          ? Cs.mainColor
                          : Cs.blackColor),
                  label: 'الحجز',
                ),
                BottomNavigationBarItem(
                    icon:   Icon(Icons.car_crash_outlined,
                        weight: 22,
                        color: _controller.selectIndex == 2
                            ? Cs.mainColor
                            : Cs.blackColor.withOpacity(.5)),
                    label: 'المركبات'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined,
                        weight: 25,
                        color: _controller.selectIndex == 3
                            ? Cs.mainColor
                            : Cs.blackColor),
                    label: 'الرئيسية'),
              ],

              type: BottomNavigationBarType.fixed,
              currentIndex: _controller.selectIndex,
              onTap: (index) {
                _controller.select(index);
                // _controller.tappedIcon(index);
              },
            ),
          ),),
      ),
    );
  }
}

