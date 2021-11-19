import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'home/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({final Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (final context, final widget) => ResponsiveWrapper.builder(
          widget,
          maxWidth: 1200,
          minWidth: 480,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      home: const HomePage(),
    );
}

