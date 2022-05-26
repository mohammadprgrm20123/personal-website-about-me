import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile_web_site/utils/utils.dart';

class About extends StatelessWidget {
  final String about = 'Mohammad, I am an Android programmer I have been '
      'doing Android programming for about 4 years You can see '
      'examples of my work in my resume At first,'
      ' I started programming with the C language,'
      ' and then I became interested '
      'in Android programming and started learning Android on my own. '
      'I started by learning the Java language and after gaining experience '
      'and attending two programming teams and a startup team '
      'then I started learning Kotlin. '
      'Then I went to the Flutter and started learning, and I have some '
      'examples of work with Flutter now.';

  const About({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
              TyperAnimatedText(
                about,
                curve: Curves.easeInOut,
                textStyle: GoogleFonts.poppins(color: Colors.white),
              ),
            ]),
            //_contactMe()
          ],
        ),
      );

  Widget _contactMe() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ObxValue<Rx<Color>>(
            (final color) => MouseRegion(
                  onEnter: (final value) {
                    color.value = Utils.blueGreen;
                  },
                  onExit: (final value) {
                    color.value = Colors.white;
                  },
                  child: GestureDetector(
                    onTap: Utils.openWhatsapp,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: color.value, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'contact me',
                                style:
                                    GoogleFonts.openSans(color: Colors.white),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: color.value,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            Colors.white.obs),
      );
}
