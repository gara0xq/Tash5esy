import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';

import '../../utils/colors.dart';

// ignore: must_be_immutable
class VerifyNumberScreen extends StatelessWidget {
  String nextScreen;
  VerifyNumberScreen({super.key, this.nextScreen = "verifyIdentity"});
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Verify Phone Number",
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
        child: Container(
          height: height - 100,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          constraints: const BoxConstraints(minHeight: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "${"Enter The 6-digit Number That We Sent To"} +20${1003137654}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Enter The Code",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      color: primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    onChanged: (value) {},
                    controller: codeController,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      fieldHeight: 60,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      inactiveColor: grey,
                      activeColor: secondary,
                      selectedColor: secondary,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn’t Receive Anything ? ",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: grey,
                        ),
                      ),
                      Text(
                        "Resend code",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: secondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CustomButton(
                title: "Next",
                onTap: () {
                  Get.toNamed('/$nextScreen');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
