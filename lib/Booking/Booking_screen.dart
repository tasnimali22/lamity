import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/const.dart';

class AppCar extends StatelessWidget {
  const AppCar({super.key});

  @override
  Widget build(BuildContext context) {
    final Bookking = <Widget>[
       Center(child:Image.asset("assets/images/Frame 1.png"),),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         Container(
           height: 77,width: 182,
           decoration: BoxDecoration(
             color: Cs.whiteColor,
             borderRadius: BorderRadius.circular(15)
           ),
           child: Column(
             children: [
               Row(
                 children: [
                   Icon(Icons.calendar_month_outlined),
                   Text("20-8-2021"),
                   Icon(Icons.watch_later_outlined),
                   Text(" 00:09 ص"),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     height: 20,width: 20,
                     decoration: BoxDecoration(
                       color: Cs.blackColor,
                       borderRadius: BorderRadius.circular(20),
                     ),
                   ),
                   Text("فيراري"),

                 ],
               ),

             ],
           ),
           
         ),
         Container(
           height: 77,width: 182,
           decoration: BoxDecoration(
               color: Cs.whiteColor,
               borderRadius: BorderRadius.circular(15)
           ),
           child: Column(
             children: [
               Row(
                 children: [
                   Icon(Icons.calendar_month_outlined),
                   Text("20-8-2021"),
                   Icon(Icons.watch_later_outlined),
                   Text(" 00:09 ص"),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     height: 20,width: 20,
                     decoration: BoxDecoration(
                       color: Cs.red,
                       borderRadius: BorderRadius.circular(20),),),
                   Text("فلكسواجن"),

                 ],
               ),

             ],
           ),
         )

       ],),
    ];
    final _kTabs = <Tab>[
      const Tab(text: 'الحالية'),
      const Tab( text: 'السابقة'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(

        appBar: AppBar(
          title: const Text('الحجوزات'),
          backgroundColor: Cs.mainColor,

          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: Bookking,
        ),
      ),
    );
  }
}