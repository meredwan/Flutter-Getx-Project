import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var book = 0.obs;
  var pens = 0.obs;

  int get sum => book.value + pens.value;

  increment() {
    book.value++;
  }

  decrement() {
    if (book.value <= 0) {
      Get.snackbar("Buying", "Can not be less than zero ",
          icon: Icon(Icons.alarm),
          barBlur: 200,
          isDismissible: true,
          duration: Duration(seconds: 4));
    } else {
      book.value--;
    }
  }

  incrementpens() {
    pens.value++;
  }

  decrementpens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying", "Can not be less than zero ",
          icon: Icon(Icons.alarm),
          barBlur: 200,
          isDismissible: true,
          duration: Duration(seconds: 4));
    } else {
      pens.value--;
    }
  }
}
