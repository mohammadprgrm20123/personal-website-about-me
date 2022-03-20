import 'dart:html';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_profile_web_site/home/views/widgets/my_image.dart';

import '../../about/about.dart';
import '../../controllers/home_controller.dart';
import '../../utils/utils.dart';
import 'widgets/my_icon.dart';

class HomeMobile extends GetView<HomeController> {
  const HomeMobile({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: Utils.backgroundColor,
        body: ListView(
          shrinkWrap: true,
          children:  [
            Stack(
              children: [
                const SizedBox(
                height: 400,
                child: MyImage(),
              ),
                _icons()


          ]
            ),
            const About(),

            downloadCv(),

          ],
        ),
      );

  Widget _icons() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: FadeInRightBig(
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
    ),
  );

  Widget downloadCv() => Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(
      onTap: () async {
        AnchorElement(
            href:
            'https://mohammadkazeminejad.ir/resume.pdf')
          ..download = 'pdf'
          ..click();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _downloadCv(),
              const FaIcon(
                FontAwesomeIcons.cloudDownloadAlt,
                size: 13,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    ),
  );
  Widget _downloadCv() => const Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Text(
      'Download cv',
      style: TextStyle(color: Colors.white, fontSize: 14),
    ),
  );
}
