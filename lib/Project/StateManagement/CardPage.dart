import 'package:flutter/material.dart';
import 'package:flutter_getx/Project/StateManagement/Controller/Controller.dart';
import 'package:flutter_getx/Project/StateManagement/Result.dart';
import 'package:get/get.dart';

class CradPage extends StatefulWidget {
  const CradPage({super.key});

  @override
  State<CradPage> createState() => _CradPageState();
}

class _CradPageState extends State<CradPage> {
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("State Management"),
      // ),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(40))),
            child: const Center(
              child: Text(
                "GetX Flutter",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(fontSize: 25, color: Colors.amber[400]),
                ),
                Expanded(child: Container()),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red),
                    child: IconButton(
                        onPressed: () {
                          c.increment();
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ))),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.book}",
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red),
                    child: IconButton(
                        onPressed: () {
                          c.decrement();
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 30,
                        ))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Pens",
                  style: TextStyle(fontSize: 25, color: Colors.amber[400]),
                ),
                Expanded(child: Container()),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red),
                    child: IconButton(
                        onPressed: () {
                          c.incrementpens();
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ))),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.pens}",
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red),
                    child: IconButton(
                        onPressed: () {
                          c.decrementpens();
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 30,
                        ))),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Container(
                  height: 70,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () => Get.to(() => Result()),
                      child: Text(
                        "Total",
                        style: TextStyle(fontSize: 30),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
