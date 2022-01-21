import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../about/about.dart';
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
      body: FadeIn(
        child: Stack(
          children: [
            Row(
              children: [
                _image(),
                _customPaint(context),
              ],
            ),
            const Header(),
          ],
        ),
      ),
    );
  }

  Widget _customPaint(final BuildContext context) => Expanded(
        flex: 3,
        child: CustomPaint(
          size: Size.infinite,
          painter: RectangleCustom(
              color: Utils.backgroundColor,
              name: 'Mohammad \nKazeminejad',family: ''),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: SizedBox(
                  height: Get.height / 2.5,
                  child: Obx(() => IndexedStack(
                        index: controller.currentIndex.value,
                        children: const [About()],
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
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: MyIcon(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onTap: () {
                  Utils.launchURL(Utils.instagram);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: MyIcon(
                icon: const FaIcon(FontAwesomeIcons.github),
                onTap: () {
                  Utils.launchURL(Utils.githubLink);
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(2.0),
                child: MyIcon(
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  onTap: () {
                    Utils.launchURL(Utils.linkDin);
                  },
                ))
          ],
        ),
      );

  Widget _image() => const Expanded(
        flex: 2,
        child: MyImage(),
      );
}
