import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

// ignore: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Edit Profiles",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/avatar.png'),
            ),
            const Text(
              "Sarah Doe",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 24,
                color: primary,
                fontWeight: FontWeight.w800,
              ),
            ),
            Form(
              key: formKey,
              child: ListInputs(
                controller: [nameController, bioController, emailController],
                hintText: const [
                  "John Doe",
                  "stay smile",
                  "Johndoe@example.com"
                ],
                title: const ["Full Name", "Bio", "Email"],
                inputType: const [
                  InputType.text,
                  InputType.text,
                  InputType.email
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              title: "Submit",
              onTap: () => Get.back(),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
