import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/add_record_background.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

// ignore: must_be_immutable
class PastIllnessesScreen extends StatelessWidget {
  PastIllnessesScreen({super.key});
  TextEditingController q1Controller = TextEditingController();
  TextEditingController q5Controller = TextEditingController();
  TextEditingController q6Controller = TextEditingController();
  TextEditingController q7Controller = TextEditingController();
  TextEditingController q8Controller = TextEditingController();
  String? q2Controller,
      q3Controller,
      q4Controller,
      q9Controller,
      q10Controller,
      q11Controller,
      q12Controller;
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
          "Past Illnesses",
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
            ? Get.toNamed('/allergiesScreen')
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
                q7Controller,
                q8Controller,
                q9Controller,
                q10Controller,
                q11Controller,
                q12Controller,
              ],
              hintText: const [
                "Cancer",
                "No",
                "Vitamins and supplements",
                "17/9",
                "Antibiotics",
                "Yes, and what ?",
                "Diabetes",
                "Yes, and what ?",
                "Yes",
                "Yes, and what ?",
                "Yes",
                "Yes",
              ],
              title: const [
                "What illnesses or diseases have you had in the past?",
                "Since your initial diagnosis and treatment, have your illnesses returned?",
                "What medical care did you get for the illness?",
                "When did you first notice the disease's symptoms?",
                "Do you have any emergency medication on you? ",
                "Have you ever suffered a fracture or sprain?",
                "Do you have any chronic conditions?",
                "Have you had any surgeries or hospitalizations in the past?",
                "Have you received all recommended vaccinations?",
                "Have you had any recent injuries or accidents?",
                "Have you had any recent blood tests or imaging studies?",
                "Do you smoke or use any tobacco products?",
              ],
              inputType: const [
                InputType.text,
                InputType.multiChoice,
                InputType.multiChoice,
                InputType.date,
                InputType.text,
                InputType.text,
                InputType.text,
                InputType.text,
                InputType.multiChoice,
                InputType.text,
                InputType.multiChoice,
                InputType.multiChoice,
              ],
              items: const [
                [],
                ["Yes", "No"],
                ["Vitamins"],
                [],
                [],
                [],
                [],
                [],
                ["ts"],
                [],
                ["Yes", "No"],
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
