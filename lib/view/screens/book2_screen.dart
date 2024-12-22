import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/model/appointment_model.dart';
import 'package:tash5esy/model/book_model.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/screens/payment/payments.dart';
import 'package:tash5esy/view/widgets/date_box.dart';
import 'package:tash5esy/view/widgets/visit_hour_box.dart';

import '../../controller/test_details_controller.dart';

class Book2Screen extends StatelessWidget {
  final controller = Get.put(TestDetailsController());
  final AppointmentModel model;

  Book2Screen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Appointment Details",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GetBuilder<TestDetailsController>(
              init: TestDetailsController(),
              builder: (controller) {
                controller.time = 11;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              spreadRadius: -6,
                              offset: const Offset(-2, -1),
                              blurRadius: 10,
                            )
                          ],
                        ),
                        child: Image.asset(
                          "assets/images/${model.image}",
                          // fit: BoxFit.cover,
                          scale: 2,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        model.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: primary,
                          fontWeight: FontWeight.w900,
                          fontFamily: "lato",
                          fontSize: 32,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          model.doctorName,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: grey,
                            fontWeight: FontWeight.w400,
                            fontFamily: "lato",
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "About",
                      style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontFamily: "lato",
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      model.about,
                      style: const TextStyle(
                        color: Color(0xFF86888F),
                        fontWeight: FontWeight.w500,
                        fontFamily: "lato",
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Text(
                          "Schedules",
                          style: TextStyle(
                            color: primary,
                            fontWeight: FontWeight.bold,
                            fontFamily: "lato",
                            fontSize: 20,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () => controller.selectDate(context),
                          child: Text(
                            controller.selectedDate ?? "No date selected",
                            style: const TextStyle(
                              color: Color(0xFF86888F),
                              fontWeight: FontWeight.w500,
                              fontFamily: "lato",
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_right_rounded)
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DateBox(
                            index: 0,
                            onTap: () => controller.setDateIndex(0),
                          ),
                          DateBox(
                            index: 1,
                            onTap: () => controller.setDateIndex(1),
                          ),
                          DateBox(
                            index: 2,
                            onTap: () => controller.setDateIndex(2),
                          ),
                          DateBox(
                            index: 3,
                            onTap: () => controller.setDateIndex(3),
                          ),
                          DateBox(
                            index: 4,
                            onTap: () => controller.setDateIndex(4),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Visit Hour",
                      style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontFamily: "lato",
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 100,
                      child: GridView.builder(
                        itemCount: 8,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4, mainAxisExtent: 40),
                        itemBuilder: (_, i) {
                          return VisitHourBox(
                            index: i,
                            onTap: () {
                              controller.setTimeIndex(i);
                            },
                            time: controller.time++,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        DateTime dateTime = DateTime.now().add(
                          Duration(days: controller.dateIndexKey - 2),
                        );
                        String selectedDate =
                            DateFormat("yyyy-MM-dd").format(dateTime);
                        int selectedHour = controller.timeIndexKey + 11 > 12
                            ? (controller.timeIndexKey + 11) - 12
                            : controller.timeIndexKey + 11;
                        dateTime = DateTime.parse(
                            "$selectedDate ${selectedHour < 10 ? "0" : ""}$selectedHour:00");

                        Get.to(
                          () => Payments(
                            model: BookModel(
                              title: model.title,
                              type: BookType.Test,
                              dateTime: dateTime,
                              price: model.price,
                              labName: model.labName,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "Book Appointment",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w500,
                            fontFamily: "lato",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
