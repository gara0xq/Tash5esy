import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/home_controller.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';

import '../../utils/colors.dart';
import '../widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> sliderImages = [
    "assets/images/slider1.png",
    "assets/images/slider2.png",
    "assets/images/slider3.png",
    "assets/images/slider4.png",
    "assets/images/slider5.png",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Get.put(HomeController(), permanent: true);
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome To",
                              style: TextStyle(
                                color: secondary,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "TASH",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: green,
                                  ),
                                ),
                                Text(
                                  "5ESY",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    color: secondary,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.toNamed("/notification");
                        },
                        icon: const Icon(
                          Icons.notifications_none_rounded,
                          color: secondary,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 230,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                    ),
                    items: sliderImages.map((imagePath) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),
                  HomeCard(
                    text: "Medical History",
                    imagePath: "assets/images/medical history.png",
                    click: () {
                      Get.toNamed("/medicalHistory");
                    },
                  ),
                  HomeCard(
                    text: "Appointments",
                    imagePath: "assets/images/visits.png",
                    click: () {
                      Get.toNamed("/appointmentScreen");
                    },
                  ),
                  HomeCard(
                    text: "Medical Documents",
                    imagePath: "assets/images/documents.png",
                    click: () {
                      Get.toNamed("/documentScreen");
                    },
                  ),
                ],
              ),
            ),
            if (controller.demoIndex <= 2)
              Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color.fromARGB(140, 66, 66, 66),
              ),
            if (controller.demoIndex <= 2)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 95),
                  Container(
                    height: 250,
                    width: 280,
                    margin: EdgeInsets.only(right: 20, bottom: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Here You Will Complete your Medical History Form",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          'assets/images/demo${controller.demoIndex + 1}.jpg',
                          height: 100,
                          width: 100,
                        ),
                        const Spacer(),
                        CustomButton(
                          title: "Next",
                          onTap: () => controller.nextDemoIndex(),
                        )
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: (controller.demoIndex * 100),
                  ),
                  Container(
                    width: width,
                    color: Colors.white,
                    child: controller.demoIndex == 0
                        ? HomeCard(
                            text: "Medical History",
                            imagePath: "assets/images/medical history.png",
                          )
                        : controller.demoIndex == 1
                            ? HomeCard(
                                text: "Appointments",
                                imagePath: "assets/images/visits.png",
                              )
                            : HomeCard(
                                text: "Medical Documents",
                                imagePath: "assets/images/documents.png",
                              ),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
