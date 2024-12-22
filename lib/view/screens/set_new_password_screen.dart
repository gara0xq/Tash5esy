import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

class SetNewPasswordScreen extends StatelessWidget {
  SetNewPasswordScreen({super.key});
  final password1Controller = TextEditingController();
  final password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Forgot Your Password",
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
                  "Please Enter The Information Below To Reset Your Password",
                  textAlign: TextAlign.center,
                  // style: AppTextStyles.bodyTextSmall.copyWith(color: AppColors.grey),
                ),
                const SizedBox(height: 30),
                ListInputs(
                  controller: [password1Controller, password2Controller],
                  hintText: ["********", "********"],
                  title: ["New Password", "Confirm New Password"],
                  inputType: [InputType.password, InputType.password],
                ),
                const Spacer(),
                CustomButton(
                  title: "Update Password",
                  onTap: () {
                    Get.dialog(
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 30.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Successful',
                                    style: TextStyle(
                                      color: primary,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "lato",
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Congratulations! Your Password Has Been Changed. '
                                    'Click Continue To Login',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "lato",
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: secondary,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.offAllNamed('/login');
                                    },
                                    child: const Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: "lato"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
