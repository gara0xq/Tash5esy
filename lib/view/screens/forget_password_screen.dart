import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/screens/verify_number_screen.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  final phoneNumberController = TextEditingController();
  final nidController = TextEditingController();

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
                  controller: [phoneNumberController, nidController],
                  hintText: ["+20154218457", "123-456-7890"],
                  title: ["Phone Number", "National ID"],
                  inputType: [InputType.nid, InputType.phone],
                ),
                const Spacer(),
                CustomButton(
                  title: "Verify Code",
                  onTap: () {
                    Get.to(VerifyNumberScreen(
                      nextScreen: "setNewPassword",
                    ));
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
