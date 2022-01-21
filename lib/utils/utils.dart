


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static const Color primaryColor = Color(0xff596065);
  static const Color backgroundColor = Color(0xff2d2b2b);
  static const Color blueGreen = Color(0xff6ed4d1);


  static const String githubLink = 'https://github.com/mohammadprgrm20123';
  static const String linkDin = 'https://www.linkedin.com/in/mohammad-kazeminejad-9a517218b/';
  static const String instagram = 'https://github.com/mohammadprgrm20123';



 static void launchURL(final String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';



  static void openWhatsapp() async{
    const whatsapp ='+989309103564';
    const whatsAppURlAndroid = 'tel:$whatsapp';
      if( await canLaunch(whatsAppURlAndroid)){
        await launch(whatsAppURlAndroid);
      }else{
        ScaffoldMessenger.of(Get.context!).showSnackBar(
            const SnackBar(content: Text('whatsapp no installed')));
      }
    }
  }
