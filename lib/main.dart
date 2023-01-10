import 'package:flutter/material.dart';
import 'package:flutter_getx/Getxdailog.dart';
import 'package:flutter_getx/HomeScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: Dialog_Alert());
  }
}
