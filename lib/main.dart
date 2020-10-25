import 'package:flutter/material.dart';
import 'package:stock_app_demo/pages/Step1.dart';
import 'package:stock_app_demo/pages/Home.dart';
import 'package:stock_app_demo/pages/Step2a.dart';
import 'package:stock_app_demo/pages/Step2b.dart';
import 'package:stock_app_demo/pages/Step3.dart';
import 'package:hexcolor/hexcolor.dart';
void main() {
  runApp(MaterialApp(
    theme:ThemeData(
      primaryColor: HexColor("#000085"),
      fontFamily: "NeueMontreal",
    ),
    initialRoute: '/',
    routes: {
      '/':(context)=>Home(),
      '/step1':(context)=>Step1(),
      '/step2a':(context)=>Step2a(),
      '/step2b':(context)=>Step2b(),
      '/step3':(context)=>Step3(),
      // '/step4':(context)=>Step4(),
      // '/step5':(context)=>Step5(),
      // '/login':(context)=>Login(),
      // '/login2':(context)=>Login2()
      },
  ));
}

