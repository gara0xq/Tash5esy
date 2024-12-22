import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/add_record_background.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

// ignore: must_be_immutable
class FamilyHealthScreen extends StatelessWidget {
  FamilyHealthScreen({super.key});
  TextEditingController q1Controller = TextEditingController();
  TextEditingController q2Controller = TextEditingController();
  TextEditingController q3Controller = TextEditingController();
  TextEditingController q4Controller = TextEditingController();
  String? q5Controller;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primary,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Family health history",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: AddRecordBackground(
        onTap: () =>
            formKey.currentState == null ? Get.offAllNamed('/main') : null,
        children: [
          Form(
            // key: formKey,
            child: ListInputs(
              controller: [
                q1Controller,
                q2Controller,
                q3Controller,
                q4Controller,
                q5Controller,
              ],
              hintText: const [
                "Yes, and what ?",
                "Yes, and what ?",
                "Yes, and what ?",
                "Yes, and what ?",
                "No",
              ],
              title: const [
                "Do you have a family history of chronic diseases such as cancer, diabetes, heart disease?",
                "Have there been any genetic disorders or congenital disabilities in your family?",
                "Have your family members been hospitalized or had major medical procedures?",
                "Have any family members passed away at a younger age due to health-related issues?",
                "Do you have a disabled person in your family?",
              ],
              inputType: const [
                InputType.text,
                InputType.text,
                InputType.text,
                InputType.text,
                InputType.multiChoice,
              ],
              items: const [
                [],
                [],
                [],
                [],
                ["Yes", "No"],
              ],
              inputStyle: InputStyle.borderd,
            ),
          )
        ],
      ),
    );
  }
}
