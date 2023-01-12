import 'package:flutter/material.dart';
import 'package:flutter_getx/Project/RouteManagement/RouteManagment.dart';
import 'package:get/get.dart';

class FristPage extends StatefulWidget {
  const FristPage({super.key});

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 70,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade500,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () => Get.to(() => RouteManagement()),
              child: Text(
                "Home",
                style: TextStyle(fontSize: 30),
              )),
        ),
      ),
    );
  }
}
