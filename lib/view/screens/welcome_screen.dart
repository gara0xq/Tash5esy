import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';

import '../../utils/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          constraints: const BoxConstraints(minHeight: 650),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  'assets/images/get started.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome to ",
                        style: TextStyle(
                          color: secondary,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Tash',
                          style: TextStyle(
                            color: green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato',
                            fontSize: 30,
                          ),
                          children: [
                            TextSpan(
                              text: '5esy',
                              style: TextStyle(
                                color: secondary,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Lato',
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Welcome to Tash5esy, your dedicated health portal where you can easily access and manage your medical records and stay informed about your health by enhancing your knowledge of your health and controlling your well-being.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: "lato",
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomButton(
                title: "Get Started",
                onTap: () {
                  Get.offAllNamed("/login");
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
