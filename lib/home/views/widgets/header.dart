
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/utils.dart';
import 'my_icon.dart';

class Header extends StatelessWidget {
  const Header({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => _header();

  Widget _header() => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Utils.primaryColor.withOpacity(.4),
              borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _name(),
              const Expanded(child: SizedBox()),
              downloadCv(),
            ],
          ),
        ),
      );

  Widget _name() => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            MyIcon(
              icon: const FaIcon(
                FontAwesomeIcons.connectdevelop,
                color: Colors.lightBlue,
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('M.kazeminejad',
                  style: GoogleFonts.daysOne(color: Colors.white)),
            ),
          ],
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

  Widget text(final String text) => ObxValue<RxDouble>(
      (final size) => MouseRegion(
            onEnter: (final value) {
              size.value = 24;
            },
            onExit: (final avlue) {
              size.value = 14;
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: size.value),
              ),
            ),
          ),
      14.0.obs);

  Widget _downloadCv() => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          'Download cv',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      );
}
