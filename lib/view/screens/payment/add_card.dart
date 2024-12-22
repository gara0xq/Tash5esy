import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/model/book_model.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/successful_box.dart';

class AddCard extends StatelessWidget {
  final BookModel model;
  const AddCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                const SizedBox(height: 20),
                SizedBox(
                  height: height - 142,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Card2.png'),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: Text(
                            "Name on card",
                            style: TextStyle(
                              color: secondary,
                              fontWeight: FontWeight.w600,
                              fontFamily: "lato",
                              fontSize: 18,
                            ),
                          ),
                          hintText: "Jane Doe",
                          hintStyle: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w400,
                            fontFamily: "lato",
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          label: Text(
                            "Card number",
                            style: TextStyle(
                              color: secondary,
                              fontWeight: FontWeight.w600,
                              fontFamily: "lato",
                              fontSize: 18,
                            ),
                          ),
                          hintText: "**** **** **** 0886",
                          hintStyle: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w400,
                            fontFamily: "lato",
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                label: Text(
                                  "Expiry date",
                                  style: TextStyle(
                                    color: secondary,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "lato",
                                    fontSize: 18,
                                  ),
                                ),
                                hintText: "06/28",
                                hintStyle: TextStyle(
                                  color: grey2,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "lato",
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                label: Text(
                                  "CVV",
                                  style: TextStyle(
                                    color: secondary,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "lato",
                                    fontSize: 18,
                                  ),
                                ),
                                hintText: "667",
                                hintStyle: TextStyle(
                                  color: grey2,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "lato",
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.dialog(
                      SuccessfulBox(model: model),
                    ).then(
                      (value) {
                        Get.back();
                      },
                    );
                  },
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    height: 45,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "Confirm",
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
