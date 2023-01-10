import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialog_Alert extends StatefulWidget {
  const Dialog_Alert({super.key});

  @override
  State<Dialog_Alert> createState() => _Dialog_AlertState();
}

class _Dialog_AlertState extends State<Dialog_Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Getx Dialog Alert"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () {
                Get.defaultDialog(
                    titlePadding: EdgeInsets.only(top: 10),
                    confirm: TextButton(onPressed: () {}, child: Text("Ok")),
                    cancel: TextButton(onPressed: () {}, child: Text("Cancel")),
                    middleText: "Are You Sure Delete Chat?",
                    title: "Delete Chat");
              },
              title: Text("Dialog Alert"),
              subtitle: Text("dialog"),
              contentPadding: EdgeInsets.all(20),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Light Mood"),
                        leading: Icon(Icons.dark_mode),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Dark Mood"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
              title: Text("Dialog Alert"),
              subtitle: Text("dialog"),
              contentPadding: EdgeInsets.all(20),
            ),
          )
        ],
      ),
    );
  }
}
