import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/test_details_controller.dart';
import 'package:tash5esy/model/book_model.dart';
import 'package:tash5esy/utils/colors.dart';

class SuccessfulBox extends StatefulWidget {
  final BookModel model;
  const SuccessfulBox({super.key, required this.model});

  @override
  State<SuccessfulBox> createState() => _SuccessfulBoxState();
}

class _SuccessfulBoxState extends State<SuccessfulBox> {
  TestDetailsController controller = TestDetailsController();
  @override
  void initState() {
    DateTime dateTime = controller.dateSelected.add(
      Duration(days: controller.dateIndexKey - 2),
    );
    String selectedDate = DateFormat("yyyy-MM-dd").format(dateTime);
    int selectedHour = controller.timeIndexKey + 11;
    dateTime = DateTime.parse(
        "$selectedDate ${selectedHour < 10 ? "0" : ""}$selectedHour:00");
    controller.setBook(
      BookModel(
        title: widget.model.title,
        type: BookType.Test,
        dateTime: dateTime,
        price: widget.model.price,
      ),
    );
    Future.delayed(const Duration(seconds: 3), () => Get.offAllNamed('/main'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/success.png'),
            ),
            const Text(
              "Successful",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: "lato",
                fontSize: 26,
              ),
            ),
            Text(
              "You have successfully paid for ${widget.model.price}EGP ${widget.model.type == BookType.Test ? "for ${widget.model.title} Test" : "from ${widget.model.doctorName}"}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: grey2,
                fontWeight: FontWeight.w500,
                fontFamily: "lato",
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
