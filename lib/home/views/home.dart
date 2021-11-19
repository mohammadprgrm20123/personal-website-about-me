import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_profile_web_site/about/about.dart';

import '../../controllers/home_controller.dart';
import '../../rectangle_custom.dart';
import '../../utils/utils.dart';
import 'widgets/header.dart';
import 'widgets/my_icon.dart';
import 'widgets/my_image.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    Get.lazyPut(() => HomeController());
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              _image(),
              _customPaint(),
            ],
          ),
          const Header(),
        ],
      ),
    );
  }

  Widget _customPaint() => Expanded(
        flex: 3,
        child: CustomPaint(
          size: Size.infinite,
          painter: RectangleCustom(
              color: Utils.backgroundColor,
              name: 'mohammad',
              family: 'kazeminejad'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SizedBox(
                  height: Get.height/2.5,
                  child: Obx(() => IndexedStack(
                        index: controller.currentIndex.value,
                        children:  const [About()],
                      )),
                ),
              ),
              _iconsAndDivider(),
            ],
          ),
        ),
        // child: CustomPaint(
        //   painter:RectangleCustom(),
        // ),
      );

  Widget _iconsAndDivider() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VerticalDivider(
            color: Utils.primaryColor,
            thickness: 2,
          ),
          _icons(),
        ],
      );

  Widget _icons() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(2.0),
              child: MyIcon(icon: FaIcon(FontAwesomeIcons.facebook)),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: MyIcon(icon: FaIcon(FontAwesomeIcons.github)),
            ),
            Padding(
                padding: EdgeInsets.all(2.0),
                child: MyIcon(
                  icon: FaIcon(FontAwesomeIcons.facebook),
                ))
          ],
        ),
      );

  Expanded _image() => Expanded(
        flex: 2,
        child: MyImage(),
      );
}
