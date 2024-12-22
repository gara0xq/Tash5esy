import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/controller/test_details_controller.dart';
import 'package:tash5esy/model/book_model.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/screens/more_trasaction_screen.dart';

class TransactionsScreen extends StatelessWidget {
  TransactionsScreen({super.key});
  final controller = Get.put(TestDetailsController());
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
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
        Container(
          margin: const EdgeInsets.all(15),
          width: double.infinity,
          height: 200,
          child: Image.asset(
            'assets/images/Card2.png',
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Your Transactions",
                style: TextStyle(
                  color: secondary,
                  fontWeight: FontWeight.bold,
                  fontFamily: "lato",
                  fontSize: 22,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoreTrasactionScreen(),
                    ),
                  );
                },
                child: const Text(
                  "See More",
                  style: TextStyle(
                    color: grey2,
                    fontWeight: FontWeight.bold,
                    fontFamily: "lato",
                    fontSize: 14,
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: grey2,
              )
            ],
          ),
        ),
        SizedBox(
          height: height - 384,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.books.length,
            separatorBuilder: (_, i) => const Divider(),
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
    );
  }
}
