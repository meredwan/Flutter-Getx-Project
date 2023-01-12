import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SceondPage extends StatefulWidget {
  const SceondPage({super.key});

  @override
  State<SceondPage> createState() => _SceondPageState();
}

class _SceondPageState extends State<SceondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Price"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Get.arguments['Text'] ?? "Nothing Data Show",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              Get.arguments['Price'] ?? "Exception Page",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
