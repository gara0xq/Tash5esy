// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/add_record_background.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

class AllergiesScreen extends StatelessWidget {
  AllergiesScreen({super.key});
  TextEditingController q4Controller = TextEditingController();
  TextEditingController q6Controller = TextEditingController();
  String? q1Controller, q2Controller, q3Controller, q5Controller;
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
          "Allergies and\nother health issues",
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
        onTap: () => formKey.currentState == null
            ? Get.toNamed('/familyHealthScreen')
            : null,
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
                q6Controller,
              ],
              hintText: const [
                "No",
                "Eye Allergies",
                "7 years ago",
                "Yes, and what ?",
                "Wheezing and difficulty breathing",
                "Yes, and what ?",
              ],
              title: const [
                "Do you have any allergies?",
                "What kind of allergies do you have?",
                "When was your allergy first diagnosed?",
                "Do you have any family members with allergies?",
                "What happens to your body when exposed to an allergen?",
                "Have you experienced any new allergens recently?",
              ],
              inputType: const [
                InputType.multiChoice,
                InputType.multiChoice,
                InputType.multiChoice,
                InputType.text,
                InputType.multiChoice,
                InputType.text,
              ],
              items: const [
                ["Yes", "No"],
                ["Eye Allergies"],
                [
                  "0-1 Year ago",
                  "1-3 Years ago",
                  "3-10 years ago",
                  "10+ Years ago",
                ],
                [],
                ["Wheezing and difficulty breathing"],
                [],
              ],
              inputStyle: InputStyle.borderd,
            ),
          )
        ],
      ),
    );
  }
}
