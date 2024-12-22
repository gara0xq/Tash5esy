import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tash5esy/model/document_model.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/screens/lab_result_screen.dart';

class DocumentScreen extends StatelessWidget {
  DocumentScreen({super.key});
  final List<DocumentModel> _recentDocuments = [
    DocumentModel(
      documentName: 'Chest X-ray',
      dateTime: DateTime.parse('2024-08-25'),
      type: DocumentType.XRay,
      description: "lorem",
    ),
    DocumentModel(
      documentName: 'CBC Test',
      dateTime: DateTime.parse('2024-08-15'),
      type: DocumentType.Lab,
      description: "lorem",
    ),
    DocumentModel(
      documentName: 'BMP Test',
      dateTime: DateTime.parse('2024-07-30'),
      type: DocumentType.Lab,
      description: "lorem",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildButton(
                  context,
                  'Lab Results',
                  '${_recentDocuments.where((e) => e.type == DocumentType.Lab).toList().length} files',
                  Icons.biotech,
                  () => Get.to(
                    () => LabResultScreen(
                      models: _recentDocuments
                          .where((e) => e.type == DocumentType.Lab)
                          .toList(),
                    ),
                  ),
                ),
                _buildButton(
                  context,
                  'X-Ray Results',
                  '${_recentDocuments.where((e) => e.type == DocumentType.XRay).toList().length} files',
                  Icons.medical_services,
                  () => Get.to(
                    () => LabResultScreen(
                      models: _recentDocuments
                          .where((e) => e.type == DocumentType.XRay)
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              color: grey,
              thickness: 1.5,
            ),
            const SizedBox(height: 10),
            const Text(
              'Recently',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 24,
                color: primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _recentDocuments.length,
                itemBuilder: (_, i) {
                  String date = DateFormat('dd-MM-yyyy')
                      .format(_recentDocuments[i].dateTime!);
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: secondary),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    color: white,
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/file.png",
                        width: 50,
                        height: 50,
                      ),
                      title: Text(
                        _recentDocuments[i].documentName,
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          color: secondary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        date,
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16,
                          color: grey2,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      trailing: const Icon(Icons.more_vert, color: grey),
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

  Widget _buildButton(BuildContext context, String title, String subtitle,
      IconData icon, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: secondary),
            color: white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              Icon(icon, size: 40, color: secondary),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 17,
                  color: secondary,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.file_copy, size: 16, color: grey2),
                  const SizedBox(width: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 14,
                      color: grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
