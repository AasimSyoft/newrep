import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/example_controller.dart';

class example3 extends StatefulWidget {
  const example3({super.key});

  @override
  State<example3> createState() => _example3State();
}

class _example3State extends State<example3> {
  ExampleController exampleController = Get.put(ExampleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notification'),
              Obx(() {
                return Switch(
                    value: exampleController.notification.value,
                    onChanged: (value) {
                      exampleController.setNotification(value);
                    });
              })
            ],
          )
        ],
      ),
    );
  }
}
