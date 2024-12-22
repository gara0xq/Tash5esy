import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/app_controller.dart';
import 'package:tash5esy/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final controller = Get.find<AppController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo .png',
              height: 180,
              width: 180,
            ),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                text: 'Tash',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: green,
                ),
                children: [
                  TextSpan(
                    text: '5esy',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: secondary,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
