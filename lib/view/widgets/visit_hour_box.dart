import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/test_details_controller.dart';
import 'package:tash5esy/utils/colors.dart';

class VisitHourBox extends StatelessWidget {
  final void Function() onTap;
  final int index;
  final int time;
  final controller = Get.put(TestDetailsController());
  VisitHourBox({
    super.key,
    required this.onTap,
    required this.index,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = controller.timeIndexKey == index ? true : false;
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 50,
        width: 100,
        margin: const EdgeInsets.all(2),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? secondary : Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.transparent : grey,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          "${time <= 12 ? time : time - 12}:00${time < 12 ? "AM" : "PM"}",
          style: TextStyle(
            color: isSelected ? white : primary,
            fontWeight: FontWeight.w500,
            fontFamily: "lato",
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
