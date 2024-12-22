import 'package:flutter/material.dart';
import 'package:tash5esy/model/test_model.dart';
import 'package:tash5esy/view/screens/book1_screen.dart';

import '../../utils/colors.dart';

// ignore: must_be_immutable
class TestCard extends StatelessWidget {
  TestModel model;
  TestCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(10, 111, 183, 0.14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/Test Tube.png"),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${model.title} Test",
                    style: const TextStyle(
                      color: primary,
                      fontWeight: FontWeight.w700,
                      fontFamily: "lato",
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "cost :${model.price} EGP",
                    style: const TextStyle(
                      color: secondary,
                      fontWeight: FontWeight.w400,
                      fontFamily: "lato",
                      fontSize: 14,
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Book1Screen(model: model),
                    ),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Text(
                    "view Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontFamily: "lato",
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
