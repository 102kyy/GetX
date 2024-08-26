import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'Udah ah cape',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning', 'Hayoh we',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: const Color.fromARGB(255, 255, 40, 7));
    } else {
      bilangan.value--;
    }
  }

  void reset() {
    bilangan.value = 0;
  }
}
