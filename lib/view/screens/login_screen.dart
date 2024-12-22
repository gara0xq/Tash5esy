import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

import '../../controller/login_controller.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          constraints: const BoxConstraints(minHeight: 650),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  'assets/images/logo .png',
                  height: 120,
                  width: 120,
                ),
                const Text(
                  "Let's sign you in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: secondary,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Login To Your Existing Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  ),
                ),
                const SizedBox(height: 30),
                ListInputs(
                  controller: [
                    controller.nationalIdController,
                    controller.passwordController
                  ],
                  inputType: const [InputType.nid, InputType.password],
                  title: const ["National ID", "Password"],
                  hintText: const ['E.G., 123-456-7890', '***********'],
                ),
                const Spacer(),
                GetBuilder<LoginController>(
                  builder: (c) {
                    return Row(
                      children: [
                        Checkbox(
                          value: controller.isCheck,
                          onChanged: (bool? value) {
                            controller.checkBox(value);
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.checkBox(!controller.isCheck);
                          },
                          child: const Text(
                            'Remember me',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: primary,
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/forgetPassword');
                          },
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: secondary,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const Spacer(flex: 4),
                CustomButton(
                  title: "Log In",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Get.offAllNamed('/main');
                    }
                  },
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don’t Have An Account? ',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          color: grey,
                          fontWeight: FontWeight.w400,
                        )),
                    TextButton(
                      onPressed: () {
                        Get.offAllNamed('/signup');
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          color: secondary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
