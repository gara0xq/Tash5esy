import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';
import 'package:tash5esy/model/document_model.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/screens/lab_result_detials_screen.dart';

class ResultCard extends StatelessWidget {
  final DocumentModel model;

  const ResultCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                DateFormat('hh:mm').format(model.dateTime!),
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 16,
                  color: primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.documentName,
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Tap Here To See Full Result',
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 14,
                            color: const Color.fromARGB(139, 255, 255, 255),
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(
                      () => LabResultDetialsScreen(model: model),
                    ),
                    child: Container(
                      width: 40,
                      height: 65,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
