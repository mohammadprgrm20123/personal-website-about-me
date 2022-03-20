import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyImage extends StatelessWidget {
  const MyImage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => SizedBox(
        height: context.height,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.bottomCenter,
            children: [
               Image(
                  image: const NetworkImage(
                    'https://mohammadkazeminejad.ir/me2.JPG',
                  ),
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.color,
                  isAntiAlias: true,
                  gaplessPlayback: true,
                  loadingBuilder: (final context, final child2,
                      final loadingProgress) {
                    if (loadingProgress == null) {
                      return FadeInUp(
                        delay: const Duration(milliseconds: 1800),
                        duration: const Duration(milliseconds: 800),
                        child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.cyan.withOpacity(.6),
                            BlendMode.color,
                          ),
                        child: child2),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(

                      ),
                    );
                  },
                  semanticLabel: 'mohammad kazeminejad',
                  excludeFromSemantics: true,
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FadeInUp(
                      delay: const Duration(milliseconds: 1800),
                      child: const Text(
                        'Developed with Flutter',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ]),
      );
}
