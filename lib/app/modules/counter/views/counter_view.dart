import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hitungan ke :'),
            Obx(
              () => Text(controller.bilangan.toString()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.tambahSatu();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 16), // Add spacing between buttons
                ElevatedButton(
                  onPressed: () {
                    controller.kurangSatu();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.reset();
                  },
                  child: const Icon(Icons.restart_alt),
                ),
                const SizedBox(height: 16), // Add spacing between buttons
              ],
            ),
          ],
        ),
      ),
    );
  }
}
