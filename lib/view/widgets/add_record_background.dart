import 'package:flutter/material.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';

class AddRecordBackground extends StatelessWidget {
  final List<Widget> children;
  final void Function()? onTap;
  const AddRecordBackground({
    super.key,
    required this.children,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: height / 2,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(36),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(right: 20, left: 20, bottom: 40),
            padding: const EdgeInsets.only(top: 20, bottom: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: ListView(
              children: children,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomButton(
              title: "Next",
              onTap: onTap,
            ),
          ),
        )
      ],
    );
  }
}
