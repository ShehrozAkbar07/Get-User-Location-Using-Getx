import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.yellow,
              size: 40,
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "User Location",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 30,
                  decoration: TextDecoration.underline),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Text(
                  controller.latitude.value,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                )),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Text(
                  controller.longitude.value,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                )),
            SizedBox(
              height: 15,
            ),
            Obx(() => Text(
                  controller.address.value,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ))
          ],
        ));
  }
}
