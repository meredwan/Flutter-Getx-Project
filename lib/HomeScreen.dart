import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:flutter_getx/testpage.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Getx Tutorials"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Get.snackbar(

                    icon: Icon(Icons.favorite_border),
                    margin: EdgeInsets.all(10),
                    isDismissible: true,
                    colorText: Color.fromARGB(255, 11, 75, 187),
                    titleText: Text(
                      "Hello Flutter",
                      style: TextStyle(color: Color.fromARGB(255, 223, 20, 20)),
                    ),
                    borderRadius: 20,
                    dismissDirection: DismissDirection.horizontal,
                    backgroundColor: Colors.black26,
                    duration: Duration(seconds: 5),
                    snackPosition: SnackPosition.BOTTOM,
                    "Added",
                    "Go to Next Page");
              },
              child: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Click",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
