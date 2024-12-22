import 'package:flutter/material.dart';
import 'package:tash5esy/utils/colors.dart';

class AppointmentDeialsScreen extends StatelessWidget {
  const AppointmentDeialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Appointment Detials",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 30, left: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(60),
                    color: primary,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 10, 111, 183),
                        Color.fromARGB(255, 3, 64, 120)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      )
                    ]),
                height: 46,
                child: ListTile(
                  leading: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Description",
                    style: const TextStyle(
                        fontFamily: "Lato",
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                height: 120,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(45, 10, 111, 183)),
                child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 80, left: 10),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(60),
                    color: primary,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 10, 111, 183),
                        Color.fromARGB(255, 3, 64, 120)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      )
                    ]),
                height: 46,
                child: ListTile(
                  leading: const Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Next Visit",
                    style: const TextStyle(
                      fontFamily: "Lato",
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Text(
                    "16/6",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 12,
                      color: grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(right: 200, left: 10),
                padding: const EdgeInsets.all(10),
                height: 40,
                width: 85,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 246, 254),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25)),
                child: const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Notes",
                    style: TextStyle(
                      color: primary,
                      fontFamily: "Lato",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                height: 120,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(45, 10, 111, 183),
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque congue lorem, vel tincidunt tortor placerat a. Proin ac diam quam. Aenean in sagittis magna, ut feugiat diam.",
                  style: const TextStyle(
                    fontFamily: "Lato",
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Text(
                "See You Soon",
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 20,
                  color: primary,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
