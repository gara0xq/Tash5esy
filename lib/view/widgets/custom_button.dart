import 'package:flutter/material.dart';

import '../../utils/colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  void Function()? onTap;
  String title;
  CustomButton({
    super.key,
    this.onTap,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 50,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Lato',
            fontSize: 20,
            letterSpacing: 2,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ),
    );
  }
}
