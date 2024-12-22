import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/app_controller.dart';

import '../../utils/colors.dart';

class ControllerScreen extends StatelessWidget {
  ControllerScreen({super.key});
  final controller = Get.find<AppController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: controller.screens[controller.screenIndex],
        bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.compare_arrows_rounded),
                    label: "Transactions",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.payment_rounded),
                    label: "Payments",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile ",
                  ),
                ],
                onTap: (index) => controller.setScreenIndex(index),
                currentIndex: controller.screenIndex,
                selectedItemColor: secondary,
                unselectedItemColor: Colors.grey,
                iconSize: 24,
                selectedLabelStyle: const TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
                backgroundColor: Colors.white,
              ),
      );
    });
  }
}
