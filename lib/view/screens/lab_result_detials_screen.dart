import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/model/document_model.dart';
import 'package:tash5esy/utils/colors.dart';

class LabResultDetialsScreen extends StatelessWidget {
  final DocumentModel model;

  const LabResultDetialsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Medical Documents",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PDF Card
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset("assets/images/pdf.png"),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      model.documentName,
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.snackbar(
                        "No PDF available for download", "try again letter");
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: primary, width: 2),
                    ),
                    child: const Icon(
                      Icons.download,
                      color: primary,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Notes',
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 25,
                color: secondary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: secondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                        'Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. ',
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 17,
                          color: primary,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
