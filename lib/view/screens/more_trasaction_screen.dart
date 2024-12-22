import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/test_details_controller.dart';
import 'package:tash5esy/model/book_model.dart';
import 'package:tash5esy/utils/colors.dart';

// ignore: must_be_immutable
class MoreTrasactionScreen extends StatelessWidget {
  MoreTrasactionScreen({super.key});
  final controller = Get.put(TestDetailsController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Transactions",
                  style: TextStyle(
                    color: secondary,
                    fontWeight: FontWeight.bold,
                    fontFamily: "lato",
                    fontSize: 26,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: height - 77,
                child: ListView.separated(
                  itemCount: controller.books.length,
                  separatorBuilder: (_, i) {
                    return const Divider();
                  },
                  itemBuilder: (_, i) {
                    BookModel book = controller.books[i];
                    return ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Color(0xFFDADCE2),
                          shape: BoxShape.circle,
                        ),
                        child: book.type == BookType.Test
                            ? Image.asset('assets/images/Test Tube.png')
                            : Image.asset('assets/images/Stethoscope.png'),
                      ),
                      title: Text(
                        book.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "lato",
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        book.dateTime.toString().substring(0, 10),
                        style: const TextStyle(
                          color: grey2,
                          fontWeight: FontWeight.normal,
                          fontFamily: "lato",
                          fontSize: 12,
                        ),
                      ),
                      trailing: Column(
                        children: [
                          Expanded(
                            child: Text(
                              "EGP ${book.price}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: "lato",
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Text(
                              "Completed",
                              style: TextStyle(
                                color: green,
                                fontWeight: FontWeight.normal,
                                fontFamily: "lato",
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () => Navigator.pop(context),
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: 40,
              width: 40,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
