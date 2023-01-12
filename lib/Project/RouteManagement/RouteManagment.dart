import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/Project/RouteManagement/FristPage.dart';
import 'package:flutter_getx/Project/RouteManagement/SceondPage.dart';
import 'package:get/get.dart';

class RouteManagement extends StatefulWidget {
  const RouteManagement({super.key});

  @override
  State<RouteManagement> createState() => _RouteManagementState();
}

class _RouteManagementState extends State<RouteManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade900,
                    Colors.grey.shade600,
                    Colors.grey.shade900
                  ],
                ),
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(40))),
            child: const Center(
              child: Text(
                "GetX",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  hintText: "Search GetX",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    borderSide: BorderSide(color: Colors.grey.shade100),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(() => FristPage()),
              text: "Frist Getx",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(() => SceondPage(), arguments: {
                      'Price': Random().nextInt(1000).toString(),
                      'Text': "This Price in USD"
                    }),
              text: "Sceond Getx",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Navigator named routes",
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade900,
                      Colors.grey.shade600,
                      Colors.grey.shade900
                    ],
                  )),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFffbc33e),
                            borderRadius: BorderRadius.circular(40)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Colors.grey.shade300,
                          ),
                          onPressed: () => Get.toNamed('/Course-page',
                              arguments: {
                                "Price": Random().nextInt(1000).toString()
                              }),
                          child: Text(
                            "Course",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade900),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xFffbc33e),
                            borderRadius: BorderRadius.circular(40)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Colors.grey.shade300,
                          ),
                          onPressed: () => Get.toNamed(
                              "/More-page/${Random().nextInt(1000).toString()}"),
                          child: Text(
                            "More",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade900),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
