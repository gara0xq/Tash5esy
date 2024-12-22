import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/model/book_model.dart';
import 'package:tash5esy/view/screens/payment/payment_method.dart';
import '../../../utils/colors.dart';

class Payments extends StatelessWidget {
  final BookModel model;
  const Payments({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      "Payments",
                      style: TextStyle(
                        color: secondary,
                        fontWeight: FontWeight.bold,
                        fontFamily: "lato",
                        fontSize: 26,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Your Payments",
                    style: TextStyle(
                      color: grey2,
                      fontWeight: FontWeight.w400,
                      fontFamily: "lato",
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 80,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(218, 245, 251, 255),
                          Color(0xDAB9E0FC),
                          Color(0xDAB9E0FC),
                          Color.fromARGB(218, 221, 241, 255),
                        ],
                        stops: [0.02, 0.4, 0.8, 1],
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12,
                          spreadRadius: -2,
                          offset: Offset(0, 8),
                          color: grey2,
                        )
                      ],
                    ),
                    child: Text(
                      model.type == BookType.Test
                          ? "${model.title} Test"
                          : model.doctorName,
                      style: const TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontFamily: "lato",
                        fontSize: 26,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      "Payments Details",
                      style: TextStyle(
                        color: grey2,
                        fontWeight: FontWeight.w400,
                        fontFamily: "lato",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12,
                          spreadRadius: -2,
                          offset: Offset(0, 8),
                          color: grey2,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "From",
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                            fontFamily: "lato",
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          model.labName,
                          style: const TextStyle(
                            color: primary,
                            fontWeight: FontWeight.w600,
                            fontFamily: "lato",
                            fontSize: 20,
                          ),
                        ),
                        const Divider(
                          color: grey,
                          height: 40,
                        ),
                        const Text(
                          "Due",
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                            fontFamily: "lato",
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "${model.dateTime!.day < 10 ? "0" : ""}${model.dateTime!.day}/${model.dateTime!.month < 10 ? "0" : ""}${model.dateTime!.month}/${model.dateTime!.year}",
                          style: const TextStyle(
                            color: primary,
                            fontWeight: FontWeight.w600,
                            fontFamily: "lato",
                            fontSize: 20,
                          ),
                        ),
                        const Divider(
                          color: grey,
                          height: 40,
                        ),
                        const Text(
                          "Time",
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                            fontFamily: "lato",
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "${model.dateTime!.hour < 10 ? "0" : ""}${model.dateTime!.hour > 12 ? model.dateTime!.hour - 12 : model.dateTime!.hour}:${model.dateTime!.minute < 10 ? "0" : ""}${model.dateTime!.minute} ${model.dateTime!.hour > 12 ? "PM" : "AM"}",
                          style: const TextStyle(
                            color: primary,
                            fontWeight: FontWeight.w600,
                            fontFamily: "lato",
                            fontSize: 20,
                          ),
                        ),
                        const Divider(
                          color: grey,
                          height: 40,
                        ),
                        const Text(
                          "Cost",
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                            fontFamily: "lato",
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "${model.price} EGP",
                          style: const TextStyle(
                            color: primary,
                            fontWeight: FontWeight.w600,
                            fontFamily: "lato",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: () => Get.to(() => PaymentMethod(model: model)),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "Choose Payment Method",
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w500,
                          fontFamily: "lato",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.pop(context),
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: 40,
              width: 40,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
