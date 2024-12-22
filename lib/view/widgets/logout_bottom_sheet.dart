import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/custom_button.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Logout",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 26,
              color: secondary,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "are you sure you want to log out?",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 14,
              color: primary,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 3,
                child: CustomButton(
                  title: "Cancel",
                  onTap: () => Get.back(),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 3,
                child: CustomButton(
                  title: "Logout",
                  onTap: () => Get.offAllNamed("/login"),
                ),
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
