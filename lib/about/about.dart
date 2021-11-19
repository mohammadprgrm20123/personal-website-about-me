import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                about,
                style: GoogleFonts.openSans(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
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
                          style: GoogleFonts.openSans(color: Colors.white),
                        ),
                      ),
                      const FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
