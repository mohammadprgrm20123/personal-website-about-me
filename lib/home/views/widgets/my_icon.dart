

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/utils.dart';

class MyIcon extends StatelessWidget{
  const MyIcon({final Key? key,required final this.icon}) : super(key: key);

  final Widget icon;

  @override
  Widget build(final BuildContext context) => ObxValue<Rx<Color>>((final color)=>
     MouseRegion(
       onEnter: (final value){
         color.value = Colors.lightBlueAccent;
       },
       onExit: (final value){
         color.value =Utils.backgroundColor;
         },
      child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child:  CircleAvatar(
              radius: 24,
              backgroundColor: color.value,
              child: icon,
            )
        ),
    ),Utils.backgroundColor.obs
  );


}