import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/signup_controller.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

import '../../utils/colors.dart';

// ignore: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final formKey = GlobalKey<FormState>();
  SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "New Account",
          style: TextStyle(
            fontFamily: 'Lato',
            color: secondary,
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
        iconTheme: const IconThemeData(color: secondary),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ListInputs(
                  controller: [
                    controller.nameController,
                    controller.emailController,
                    controller.nationalIdController,
                    controller.nationalIdController,
                    controller.passwordController,
                    controller.confirmPasswordController,
                  ],
                  inputType: const [
                    InputType.text,
                    InputType.email,
                    InputType.nid,
                    InputType.phone,
                    InputType.password,
                    InputType.password,
                  ],
                  title: const [
                    "Full Name",
                    "Email",
                    "National ID",
                    "Phone Number",
                    "Password",
                    "Confirm Password",
                  ],
                  hintText: const [
                    'Khaled Mohamed Hafez',
                    'example@example.com',
                    '123-456-7890',
                    '+20154218457',
                    '***********',
                    '***********',
                  ],
                ),
                const SizedBox(height: 50),
                CustomButton(
                  title: "Next",
                  onTap: () {
                    if (formKey.currentState!.validate()) {}
                    Get.toNamed('/verifyNumber');
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed('login');
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
