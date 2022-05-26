

import 'package:flutter/material.dart';

class Dev extends StatefulWidget{
  const Dev({final Key? key}) : super(key: key);

  @override
  State<Dev> createState() => _DevState();
}

class _DevState extends State<Dev> {
  @override
  Widget build(final BuildContext context) => Scaffold(
      body:  PageView(
        physics: const ScrollPhysics(),
        onPageChanged: print,
        children: const [
          Text('adsd'),
          ColoredBox(color: Colors.black45),
          ColoredBox(color: Colors.red),
          ColoredBox(color: Colors.green),
          ColoredBox(color: Colors.yellow),

        ],

      ),


    );
}