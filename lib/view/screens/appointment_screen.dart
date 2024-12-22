import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/doctor_card.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Appointments",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          DoctorCard(
            doctorName: "doctor1",
            specialization: "oncologist",
            appointmentDate: "16/6",
            imageUrl: "assets/images/doctor 1.png",
            click: () => Get.toNamed('/appointmentDetialsScreen'),
          ),
          DoctorCard(
            doctorName: "doctor2",
            specialization: "neurologist",
            appointmentDate: "8/8",
            imageUrl: "assets/images/doctor 2.png",
            click: () => Get.toNamed('/appointmentDetialsScreen'),
          ),
          DoctorCard(
            doctorName: "doctor3",
            specialization: "dermatologist",
            appointmentDate: "1/5",
            imageUrl: "assets/images/doctor 3.png",
            click: () => Get.toNamed('/appointmentDetialsScreen'),
          ),
          DoctorCard(
            doctorName: "doctor4",
            specialization: "surgeon",
            appointmentDate: "11/11",
            imageUrl: "assets/images/doctor 4.png",
            click: () => Get.toNamed('/appointmentDetialsScreen'),
          ),
          DoctorCard(
            doctorName: "doctor5",
            specialization: "cardiologist",
            appointmentDate: "15/5",
            imageUrl: "assets/images/doctor 5.png",
            click: () => Get.toNamed('/appointmentDetialsScreen'),
          )
        ],
      ),
    );
  }
}
