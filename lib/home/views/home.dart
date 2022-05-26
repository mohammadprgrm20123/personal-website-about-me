import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../about/about.dart';
import '../../controllers/home_controller.dart';
import '../../persenol_informattion/persenal_info.dart';
import '../../protfolio/views/protfolie.dart';
import '../../skill_page/skills_page.dart';
import '../../utils/utils.dart';
import 'home_mobile.dart';
import 'widgets/header.dart';
import 'widgets/my_icon.dart';
import 'widgets/my_image.dart';
import 'widgets/rectangle_custom.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    Get.lazyPut(() => HomeController());
    return context.width > 600
        ? Scaffold(
            body: FadeIn(
              child: Stack(
                children: [
                  Row(
                    children: [
                      _image(),
                      Expanded(
                        flex: 4,
                        child: Listener(
                          onPointerSignal: (final pointerSignal) {
                            if (pointerSignal is PointerScrollEvent) {
                              if (pointerSignal.scrollDelta.dy > 0) {
                                controller.pageController.nextPage(
                                    duration: const Duration(
                                      milliseconds: 10,
                                    ),
                                    curve: Curves.bounceInOut);
                                controller.pageController.nextPage(
                                    duration: const Duration(
                                      milliseconds: 10,
                                    ),
                                    curve: Curves.bounceInOut);
                              } else {
                                controller.pageController.previousPage(
                                    duration: const Duration(
                                      milliseconds: 100,
                                    ),
                                    curve: Curves.ease);
                              }
                            }
                          },
                          child: PageView(
                            controller: controller.pageController,
                            padEnds: false,
                            scrollDirection: Axis.vertical,
                            clipBehavior: Clip.none,
                            children: [
                              _customPaint(context),
                              const SkillsPage(),
                              const Portfolio(),
                              const PersonalInformation()
                            ],
                          ),
                        )
                        ,
                      ),
                      _iconsAndDivider(),
                    ],
                  ),
                  FadeInUp(
                      delay: const Duration(milliseconds: 2000),
                      duration: const Duration(milliseconds: 1000),
                      child: const Header()),
                ],
              ),
            ),
          )
        : const HomeMobile();
  }

  Widget _customPaint(final BuildContext context) => CustomPaint(
        size: Size.infinite,
        painter: RectangleCustom(
            color: Utils.backgroundColor,
            name: 'Mohammad \nKazeminejad',
            family: ''),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Spacer(),
              Spacer(),
              Expanded(child: About()),
              Spacer(),
            ],
          ),
        ),
      );

  Widget _iconsAndDivider() => ColoredBox(
        color: Utils.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const VerticalDivider(
              width: 1,
              color: Utils.primaryColor,
            ),
            _icons(),
          ],
        ),
      );

  Widget _icons() => FadeInLeftBig(
        delay: const Duration(milliseconds: 3000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElasticIn(
              delay: const Duration(milliseconds: 1000),
              child: const Padding(
                padding: EdgeInsets.all(2.0),
                child: MyIcon(
                  icon: FaIcon(FontAwesomeIcons.whatsapp),
                  onTap: Utils.openWhatsapp,
                ),
              ),
            ),
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
