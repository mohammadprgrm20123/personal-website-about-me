import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyImage extends StatelessWidget {
  const MyImage({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => FadeIn(
    child: SizedBox(
          height: context.height,
          child: ColorFiltered(
            colorFilter:
                ColorFilter.mode(Colors.cyan.shade200 , BlendMode.color),
            child: const Image(
              image: NetworkImage('https://mohammadkazeminejad.ir/me.JPG',),
              fit: BoxFit.cover,
              semanticLabel: 'mohammad kazeminejad',
              excludeFromSemantics: true,
            ),
          ),
        ),
  );
}
