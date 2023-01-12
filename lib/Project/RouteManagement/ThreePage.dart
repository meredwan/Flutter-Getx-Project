import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThreePage extends StatefulWidget {
  const ThreePage({super.key});

  @override
  State<ThreePage> createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Course Price is USD : " + Get.arguments['Price'] ?? "0",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
