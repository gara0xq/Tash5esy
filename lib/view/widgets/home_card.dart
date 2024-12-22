import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class HomeCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final void Function()? click;

  const HomeCard({
    super.key,
    required this.text,
    required this.imagePath,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: InkWell(
        onTap: click,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 90,
          padding: const EdgeInsets.all(10),
          constraints: const BoxConstraints(maxWidth: 400),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(30, 0, 122, 255),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Lato",
                  color: secondary,
                ),
              ),
              Image.asset(imagePath),
            ],
          ),
        ),
      ),
    );
  }
}
