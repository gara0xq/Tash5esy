import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/model/book_model.dart';
import 'package:tash5esy/view/screens/payment/add_card.dart';
import 'package:tash5esy/view/screens/payment/choose_card.dart';

import '../../../utils/colors.dart';

class PaymentMethod extends StatelessWidget {
  final BookModel model;
  const PaymentMethod({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
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
                const SizedBox(height: 60),
                const Text(
                  "Choose a payment methon to\ncomplete your payment",
                  style: TextStyle(
                    color: grey2,
                    fontWeight: FontWeight.w400,
                    fontFamily: "lato",
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 60),
                InkWell(
                  onTap: () => Get.to(() => ChooseCard(model: model)),
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: primary,
                        width: 1.3,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          spreadRadius: -3,
                          offset: Offset(0, 6),
                          color: grey2,
                        )
                      ],
                    ),
                    child: const Text(
                      "Credit Card",
                      style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.w700,
                        fontFamily: "lato",
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "You don't have a card?",
                      style: TextStyle(
                        color: grey2,
                        fontWeight: FontWeight.w500,
                        fontFamily: "lato",
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.to(() => AddCard(model: model)),
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      child: const Text(
                        "Add card now",
                        style: TextStyle(
                          color: secondary,
                          fontWeight: FontWeight.w500,
                          fontFamily: "lato",
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
              ],
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
