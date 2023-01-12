import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/Project/RouteManagement/FristPage.dart';
import 'package:flutter_getx/Project/RouteManagement/RouteManagment.dart';
import 'package:get/get.dart';

class fourPage extends StatefulWidget {
  const fourPage({super.key});

  @override
  State<fourPage> createState() => _fourPageState();
}

class _fourPageState extends State<fourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(() => FristPage()),
                    text: "Go To Another Page ",
                    style:
                        TextStyle(fontSize: 25, color: Colors.grey.shade600))),
            Text("Passing Data is: " + Get.parameters['data']!)
          ],
        ),
      ),
    );
  }
}
