import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/validation_controller.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/list_inputs.dart';

// ignore: must_be_immutable
class CustomInput1 extends StatelessWidget {
  String hintText, title;
  InputType inputType;
  dynamic textController;
  bool obsecure = false;
  List<String>? choices = [];
  CustomInput1({
    super.key,
    required this.textController,
    required this.hintText,
    required this.title,
    required this.inputType,
    this.choices,
  });

  ValidationController controller = Get.put(ValidationController());

  getValidation(InputType type, String value) {
    switch (type) {
      case InputType.password:
        return controller.isValidPassword(value);

      case InputType.nid:
        return controller.isValidNationalId(value);

      case InputType.text:
        return controller.isValidText(value);

      case InputType.date:
        return null;

      case InputType.multiChoice:
        return null;

      case InputType.phone:
        return controller.isValidPhoneNumber(value);

      case InputType.email:
        return controller.isValidEmail(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    obsecure = inputType == InputType.password ? true : false;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: primary,
            ),
          ),
          const SizedBox(height: 5),
          GetBuilder<ValidationController>(
            builder: (c) {
              if (inputType == InputType.date ||
                  inputType == InputType.multiChoice) {
                return InkWell(
                  onTap: () {
                    if (inputType == InputType.date) {
                      _datePicker(context, title);
                    }
                    if (inputType == InputType.multiChoice) {
                      List<Widget> items = [];
                      for (String i in choices!) {
                        items.add(Center(
                          child: Text(i),
                        ));
                      }
                      _multiChoice(context, title, items);
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          hintText,
                          style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: grey,
                          ),
                        ),
                        Icon(
                          inputType == InputType.date
                              ? Icons.calendar_month
                              : Icons.arrow_drop_down_rounded,
                          color: primary.withOpacity(0.5),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                );
              }
              return TextFormField(
                controller: textController,
                obscureText: obsecure,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: grey,
                  ),
                  filled: true,
                  fillColor: blue,
                  suffixIcon: inputType == InputType.password
                      ? IconButton(
                          onPressed: () =>
                              obsecure = controller.obsecureIcon(obsecure),
                          icon: Icon(
                            obsecure ? Icons.visibility_off : Icons.visibility,
                          ),
                          color: grey2,
                        )
                      : null,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) => getValidation(inputType, value!),
              );
            },
          ),
        ],
      ),
    );
  }

  _datePicker(context, title) {
    return BottomPicker.date(
      pickerTitle: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: primary,
        ),
      ),
      initialDateTime: DateTime.now(),
      maxDateTime: DateTime(2050),
      minDateTime: DateTime(1900),
      pickerTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      onSubmit: (index) {
        textController = controller.setDate(index);
      },
    ).show(context);
  }

  _multiChoice(context, title, List<Widget> items) {
    return BottomPicker(
      items: items,
      pickerTitle: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: primary,
        ),
      ),
      pickerTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      onSubmit: (index) {
        textController = controller.setChoice(index, choices);
      },
      buttonAlignment: MainAxisAlignment.center,
    ).show(context);
  }
}
