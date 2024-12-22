import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/add_record_background.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

// ignore: must_be_immutable
class GeneralInfoScreen extends StatelessWidget {
  GeneralInfoScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController widthontroller = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailontroller = TextEditingController();
  TextEditingController ageController = TextEditingController();

  String? genderController,
      dateOfBirthController,
      isMarriedController,
      bloodGroupController;
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
          "Create A Health Profile",
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
            ? Get.toNamed('/pastIllnessesScreen')
            : null,
        children: [
          Form(
            // key: formKey,
            child: ListInputs(
              controller: [
                nameController,
                ageController,
                genderController,
                dateOfBirthController,
                jobController,
                isMarriedController,
                countryController,
                heightController,
                widthontroller,
                bloodGroupController,
                phoneController,
                emailontroller,
              ],
              hintText: const [
                "Jessica Jung",
                "26-31",
                "Male",
                "1999/09/21",
                "Engineer",
                "No",
                "Cairo",
                "155",
                "48",
                "O",
                "01245367586",
                "Sarah321@gmail.com",
              ],
              title: const [
                "First name & Last name",
                "Age",
                "Gender",
                "Date of birth",
                "Your job",
                "Are you married ?",
                "Where do you live ?",
                "Heigh (cm)",
                "Weight (kg)",
                "Blood group",
                "Your Phone Number",
                "Your Email Address",
              ],
              inputType: const [
                InputType.text,
                InputType.text,
                InputType.multiChoice,
                InputType.date,
                InputType.text,
                InputType.multiChoice,
                InputType.text,
                InputType.text,
                InputType.text,
                InputType.multiChoice,
                InputType.phone,
                InputType.email,
              ],
              items: const [
                [],
                [],
                [
                  "Male",
                  "Female",
                ],
                [],
                [],
                [
                  "Yes",
                  "No",
                ],
                [],
                [],
                [],
                [
                  "A+",
                  "A-",
                  "B+",
                  "B-",
                  "AB+",
                  "AB-",
                  "O+",
                  "O-",
                ],
                [],
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
