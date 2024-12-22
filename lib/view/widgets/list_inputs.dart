import 'package:flutter/material.dart';
import 'package:tash5esy/view/widgets/custom_input_1.dart';
import 'package:tash5esy/view/widgets/custom_input_2.dart';

class ListInputs extends StatelessWidget {
  final List<String> hintText, title;
  final List<dynamic> controller;
  final List<InputType> inputType;
  final InputStyle inputStyle;
  final List<List<String>>? items;

  const ListInputs({
    super.key,
    required this.controller,
    required this.hintText,
    required this.title,
    required this.inputType,
    this.inputStyle = InputStyle.filled,
    this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: title.length,
      separatorBuilder: (_, i) => const SizedBox(height: 20),
      itemBuilder: (_, i) => inputStyle == InputStyle.filled
          ? CustomInput1(
              textController: controller[i],
              hintText: hintText[i],
              title: title[i],
              inputType: inputType[i],
              choices: items == null ? [] : items![i],
            )
          : CustomInput2(
              textController: controller[i],
              hintText: hintText[i],
              title: title[i],
              inputType: inputType[i],
              choices: items == null ? [] : items![i],
            ),
    );
  }
}

enum InputType {
  password,
  nid,
  text,
  date,
  multiChoice,
  phone,
  email,
}

enum InputStyle {
  filled,
  borderd,
}
