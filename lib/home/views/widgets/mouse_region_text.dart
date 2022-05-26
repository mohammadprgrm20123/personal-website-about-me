import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MouseRegionText extends StatefulWidget {
  const MouseRegionText({final Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<MouseRegionText> createState() => _MouseRegionTextState();
}

class _MouseRegionTextState extends State<MouseRegionText> {
  TextDecoration textDecoration = TextDecoration.none;

  bool animate = false;
  FontWeight fontWeight = FontWeight.normal;
  CrossFadeState crossFadeState =CrossFadeState.showFirst;

  @override
  Widget build(final BuildContext context) => MouseRegion(
        onEnter: (final value) {
          setState(() {
            textDecoration = TextDecoration.underline;
            animate = true;
            fontWeight =FontWeight.bold;
            crossFadeState =CrossFadeState.showSecond;
          });
        },
        onExit: (final value) {
          setState(() {
            textDecoration = TextDecoration.none;
            animate = false;
            fontWeight =FontWeight.normal;
            crossFadeState =CrossFadeState.showFirst;

          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: AnimatedCrossFade(
            firstCurve: Curves.bounceInOut,

            duration: const Duration(milliseconds: 200),
            crossFadeState: crossFadeState,
            firstChild: Text(
              widget.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
              ),
            ),
            secondChild: Text(
              widget.text,
              style: TextStyle(
                  color: Colors.yellow[800],
                  fontSize: 15,
                  fontWeight: fontWeight,),
            ),
          ),
        ),
      );
}
