import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/help_center_controller.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/faq_box.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: secondary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Help Center",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: GetBuilder<HelpCenterController>(
              init: HelpCenterController(),
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 800,
                      decoration: const BoxDecoration(
                        color: secondary,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'How Can We Help You?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(157, 255, 255, 255),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                prefixIcon:
                                    const Icon(Icons.search, color: primary),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => controller.changeTap(true),
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  controller.isFAQ ? primary : Colors.blue[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "FAQ",
                              style: TextStyle(
                                color:
                                    controller.isFAQ ? Colors.white : primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        InkWell(
                          onTap: () => controller.changeTap(false),
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 7),
                            decoration: BoxDecoration(
                              color:
                                  controller.isFAQ ? Colors.blue[100] : primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Contact Us",
                              style: TextStyle(
                                color:
                                    controller.isFAQ ? primary : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: controller.isFAQ
                          ? controller.faqTiles["questions"]!.length
                          : controller.contactTiles["labels"]!.length,
                      separatorBuilder: (_, i) => const SizedBox(height: 7),
                      itemBuilder: (_, i) => controller.isFAQ
                          ? FaqBox(
                              title: controller.faqTiles["questions"]![i],
                              data: controller.faqTiles["answers"]![i],
                            )
                          : ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.blue[100],
                                child: Icon(
                                  controller.contactTiles["icons"]![i],
                                  color: primary,
                                ),
                              ),
                              title: Text(
                                controller.contactTiles["labels"]![i],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: primary,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: primary,
                                size: 16,
                              ),
                            ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }

  Widget _buildTabButton(String label, bool isActive, BuildContext context) {
    return InkWell(
      onTap: () {
        if (label == 'Contact Us') {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const HelpCenterFaqScreen()),
          // );
        } else {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const ContactUsScreen()),
          // );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        decoration: BoxDecoration(
          color: isActive ? primary : Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
