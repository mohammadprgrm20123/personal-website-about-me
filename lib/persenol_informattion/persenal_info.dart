

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class PersonalInformation extends StatelessWidget{
  const PersonalInformation({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) =>Scaffold(
    backgroundColor: Utils.backgroundColor,
    body: SingleChildScrollView(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          title(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mohammad Kazeeminejad',style: buildTextStyle(),),
                Row(
                  children: [
                    Text('Address: ',style: buildTextStyle(),),
                    Text(' Iran/Shiraz',style: textStyle(),),
                  ],
                ),
                Row(
                  children: [
                    Text('Phone: ',style: buildTextStyle(),),
                    Text(' +989309103564',style: textStyle(),),
                  ],
                ),
                Row(
                  children: [
                    Text('Email: ',style: buildTextStyle(),),
                    Text(' kazeminejad95.itsu@yahoo.com',style: textStyle(),),
                  ],
                )
              ],
            ),
          )


        ],
      ),
    ),

  );

  TextStyle textStyle() => const TextStyle(color: Colors.white);
  Widget title() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Personal Info',
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Info',
          style: GoogleFonts.poppins(
              color: Colors.greenAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
  TextStyle buildTextStyle() => GoogleFonts.pacifico(
          color: Colors.greenAccent,
          fontWeight: FontWeight.normal,
    fontSize: 30
        );

}