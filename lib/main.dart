import 'package:flutter/material.dart';
import 'package:flutter_application_1/Splash.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:flutter_application_1/page10.dart';
import 'package:flutter_application_1/page11.dart';
import 'package:flutter_application_1/page12.dart';
import 'package:flutter_application_1/page14.dart';
import 'package:flutter_application_1/page13.dart';
import 'package:flutter_application_1/page15.dart';
import 'package:flutter_application_1/page2.dart';
import 'package:flutter_application_1/page3.dart';
import 'package:flutter_application_1/page4.dart';
import 'package:flutter_application_1/page5.dart';
import 'package:flutter_application_1/page6.dart';
import 'package:flutter_application_1/page7.dart';
import 'package:flutter_application_1/page9.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: page6(),
    );
  }
}
