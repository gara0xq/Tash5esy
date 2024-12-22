import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';
import 'package:tash5esy/view/widgets/photo_upload.dart';

import '../../utils/colors.dart';

class VerifyIdentityScreen extends StatelessWidget {
  const VerifyIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Verify Identity",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Container(
            height: height - 100,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            constraints: const BoxConstraints(minHeight: 580),
            child: Column(
              children: [
                const Text(
                  "In Order To Complete Your Signing Up Please Upload Your National ID Card",
                  textAlign: TextAlign.center,
                  // style: AppTextStyles.bodyTextSmall.copyWith(color: AppColors.grey),
                ),
                const SizedBox(height: 20),
                const PhotoUpload(
                  label: "Front Of NID Card",
                  subText: "Take a Front Photo Of Your NID Crad",
                  buttonTitle: "Take a Photo",
                ),
                const SizedBox(height: 20),
                const PhotoUpload(
                  label: "Back Of NID Card",
                  subText: "Take a Back Photo Of Your NID Crad",
                  buttonTitle: "Take a Photo",
                ),
                const Spacer(),
                CustomButton(
                  title: "Next",
                  onTap: () {
                    Get.toNamed('/continueVerifyIdentity');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
