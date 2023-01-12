import 'package:flutter/material.dart';
import 'package:flutter_getx/Project/StateManagement/Controller/Controller.dart';
import 'package:get/get.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_interpolation_to_compose_strings
        title: Text("Result"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              (() => Text(
                    "Total Sum: ${c.sum.toString()}",
                    style: TextStyle(fontSize: 30, color: Colors.blue.shade600),
                  )),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            // Obx(() => Text(
            //       "Total Sum : ${c.sum.toString()}",
            //       style: TextStyle(fontSize: 30),
            //     )),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () => Get.back(),
                  child: Text(
                    "Go Back",
                    style: TextStyle(fontSize: 30),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
