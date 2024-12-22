import 'package:flutter/material.dart';
import 'package:tash5esy/utils/colors.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final String appointmentDate;
  final String imageUrl;
  final VoidCallback click;

  const DoctorCard(
      {super.key,
      required this.doctorName,
      required this.specialization,
      required this.appointmentDate,
      required this.imageUrl,
      required this.click});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                height: 90,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                    style: const TextStyle(
                        fontFamily: "lato",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: primary),
                  ),
                  Text(
                    specialization,
                    style: const TextStyle(
                        fontFamily: "lato", fontSize: 13, color: grey2),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined,
                          color: primary, size: 20),
                      const SizedBox(width: 5),
                      Text(
                        appointmentDate,
                        style: const TextStyle(
                            fontFamily: "lato", fontSize: 13, color: grey2),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: click,
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          backgroundColor:
                              const Color.fromARGB(45, 10, 111, 183),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          elevation: 0,
                          minimumSize: const Size(40, 20),
                        ),
                        child: Text(
                          "Details",
                          style: const TextStyle(
                            fontSize: 15,
                            fontFamily: "lato",
                            fontWeight: FontWeight.w600,
                            color: primary,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
