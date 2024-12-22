import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';
import 'package:tash5esy/view/widgets/photo_upload.dart';

class ContinueVerifyIdentityScreen extends StatelessWidget {
  const ContinueVerifyIdentityScreen({super.key});

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
                  "Continue Verifying Your Identity",
                  textAlign: TextAlign.center,
                  // style: AppTextStyles.bodyTextSmall.copyWith(color: AppColors.grey),
                ),
                const SizedBox(height: 20),
                const PhotoUpload(
                  label: "Selfie Photo",
                  subText:
                      "It’s required by law to verify your identity as a new user",
                  buttonTitle: "Take a Selfie",
                  icon: "assets/images/selfi photo.png",
                  buttonIcon: "assets/icons/take selfi _icon.png",
                ),
                const Spacer(),
                CustomButton(
                  title: "Verify my Identity",
                  onTap: () {
                    Get.offAllNamed("/main");
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
