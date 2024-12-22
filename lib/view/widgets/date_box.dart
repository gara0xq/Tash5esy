import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tash5esy/controller/test_details_controller.dart';
import 'package:tash5esy/utils/colors.dart';

class DateBox extends StatelessWidget {
  final int index;
  final void Function() onTap;
  final controller = Get.put(TestDetailsController());

  DateBox({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isSelected = index == controller.dateIndexKey ? true : false;
    int dayNum = controller.dateSelected.add(Duration(days: index - 2)).day;
    String dayName = DateFormat('EEEE')
        .format(controller.dateSelected.add(Duration(days: index - 2)));
    return Expanded(
      child: InkWell(
        onTap: onTap,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: isSelected ? 70 : 60,
          margin: const EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: isSelected ? secondary : Colors.white,
            border: Border.all(
              color: isSelected ? Colors.transparent : grey,
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dayNum.toString(),
                style: TextStyle(
                  color: isSelected ? white : primary,
                  fontWeight: FontWeight.w500,
                  fontFamily: "lato",
                  fontSize: 20,
                ),
              ),
              Text(
                dayName,
                style: TextStyle(
                  color: isSelected ? white : primary,
                  fontWeight: FontWeight.w500,
                  fontFamily: "lato",
                  fontSize: 9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
