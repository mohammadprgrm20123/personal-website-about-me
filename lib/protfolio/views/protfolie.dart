import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/utils.dart';
import 'item_sample.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: Utils.backgroundColor,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              const SizedBox(
                height: 100,
              ),
              title(),
              listOfLastWorks()
            ])),
      );

  Widget listOfLastWorks() => SizedBox(
              height: 470,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ItemSample(
                        imageUrl: 'https://mohammadkazeminejad.ir/ragham.png',
                        nameFrameWork: 'Native (Java / Kotlin)',
                        link:
                            'https://play.google.com/store/apps/details?id=net.ragham.booking&hl=en&gl=US'),
                    SizedBox(
                      width: 30,
                    ),
                    ItemSample(
                        imageUrl:
                            'https://mohammadkazeminejad.ir/smart_cane.png',
                        nameFrameWork: 'Flutter',
                        link:
                            'https://github.com/mohammadprgrm20123/smar_cane'),
                    SizedBox(
                      width: 30,
                    ),
                    ItemSample(
                        imageUrl:
                            'https://mohammadkazeminejad.ir/ghadam_shomar.png',
                        nameFrameWork: 'Native (Java)',
                        link:
                            'https://github.com/mohammadprgrm20123/step_counter'),
                    SizedBox(
                      width: 30,
                    ),
                    ItemSample(
                        imageUrl:
                            'https://mohammadkazeminejad.ir/assessment.png',
                        nameFrameWork: 'Flutter',
                        link: 'https://assessmentsit.taaverp.com'),
                    SizedBox(
                      width: 30,
                    ),
                    ItemSample(
                      imageUrl:
                          'https://mohammadkazeminejad.ir/book_shop.png',
                      nameFrameWork: 'Flutter',
                      link:
                          'https://github.com/mohammadprgrm20123/flutter_book_shop',
                    )
                  ],
                ),
              ),
            );

  Widget title() => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Protfolio',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Latest Works',
                    style: GoogleFonts.poppins(
                        color: Colors.greenAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
}
