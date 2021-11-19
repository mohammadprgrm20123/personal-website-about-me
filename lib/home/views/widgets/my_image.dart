import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/utils.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(final BuildContext context) =>  ColorFiltered(
        colorFilter: const ColorFilter.mode(Utils.blueGreen, BlendMode.color),
        child: Image.asset(
          'lib/assets/image/me.jpg',
          fit: BoxFit.fitHeight,
          height: Get.height + 100,
        ),
      );

}
