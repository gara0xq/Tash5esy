import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/test_details_controller.dart';
import 'package:tash5esy/model/document_model.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/date_box.dart';
import 'package:tash5esy/view/widgets/result_card.dart';

// ignore: must_be_immutable
class LabResultScreen extends StatelessWidget {
  final List<DocumentModel> models;
  DateTime selectedDate = DateTime.now();

  LabResultScreen({super.key, required this.models});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Lab Results",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: GetBuilder<TestDetailsController>(
        init: TestDetailsController(),
        builder: (controller) {
          return Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () => controller.selectDate(context),
                    child: Text(
                      controller.selectedDate ?? "No date selected",
                      style: const TextStyle(
                        color: Color(0xFF86888F),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Lato",
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_right_rounded),
                ],
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: grey,
                    width: 1.3,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DateBox(
                      index: 0,
                      onTap: () => controller.setDateIndex(0),
                    ),
                    DateBox(
                      index: 1,
                      onTap: () => controller.setDateIndex(1),
                    ),
                    DateBox(
                      index: 2,
                      onTap: () => controller.setDateIndex(2),
                    ),
                    DateBox(
                      index: 3,
                      onTap: () => controller.setDateIndex(3),
                    ),
                    DateBox(
                      index: 4,
                      onTap: () => controller.setDateIndex(4),
                    ),
                  ],
                ),
              ),
              models.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: models.length,
                        itemBuilder: (context, index) {
                          final result = models[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: ResultCard(model: result),
                          );
                        },
                      ),
                    )
                  : const Expanded(
                      child: Center(
                        child: Text(
                          'No Results Available',
                          style: TextStyle(
                            fontSize: 18,
                            color: secondary,
                            fontFamily: "lato",
                          ),
                        ),
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }
}
