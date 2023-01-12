import 'package:flutter/material.dart';
import 'package:flutter_getx/Getxdailog.dart';
import 'package:flutter_getx/HomeScreen.dart';
import 'package:flutter_getx/Project/RouteManagement/FourPage.dart';
import 'package:flutter_getx/Project/RouteManagement/FristPage.dart';
import 'package:flutter_getx/Project/RouteManagement/RouteManagment.dart';
import 'package:flutter_getx/Project/RouteManagement/SceondPage.dart';
import 'package:flutter_getx/Project/RouteManagement/ThreePage.dart';
import 'package:flutter_getx/Project/StateManagement/CardPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        //   getPages: [
        //   GetPage(name: "/Course-page", page: (() => ThreePage())),
        //   GetPage(name: "/More-page/:data", page: (() => fourPage())),
        // ],

        debugShowCheckedModeBanner: false,
        home: CradPage());
  }
}
