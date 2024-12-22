import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpCenterController extends GetxController {
  bool isFAQ = false;
  final Map<String, List<dynamic>> contactTiles = {
    "labels": [
      "Customer Service",
      "Website",
      "Whatsapp",
      "Facebook",
      "Instagram",
    ],
    "icons": [
      Icons.headset_mic,
      Icons.language,
      Icons.call,
      Icons.facebook,
      Icons.camera_alt,
    ]
  };

  final Map<String, List<dynamic>> faqTiles = {
    "questions": [
      "What is Tash5esy, and how does it work?",
      "What features does Tash5esy offer for patients?",
      "How do I switch between Arabic and English in the app?",
      "I forgot my password. How can I reset it?",
      "How do I update my profile information?",
      "Is my personal and medical data secure on Tash5esy?",
      "How can I delete my account if I no longer want to use the app?",
    ],
    "answers": [
      "Tash5esy is a comprehensive electronic health record (EHR) system that connects hospitals, doctors, and patients. It allows you to book appointments, view medical records, access lab results, and manage medical insurance, all through a user-friendly app.",
      '''Appointment scheduling and management.
Access to medical records, including lab and X-ray results.
Medical insurance plans and payments.
Notifications for appointments and test results.''',
      "Go to the app settings and select the “Language” option. Choose your preferred language (Arabic or English), and the app will update immediately.",
      '''Enter your registered email address or phone number.
Follow the instructions sent to reset your password.''',
      '''Go to the “Profile” section in the app.
Tap “Edit Profile” and update your details, such as name, contact information, or profile picture.''',
      "Yes, your data is protected using advanced encryption and secure storage practices. Only authorized personnel and you can access your records.",
      "To delete your account, contact customer support through the “Help” section. Our team will guide you through the process.",
    ]
  };

  changeTap(value) {
    isFAQ = value;
    update();
  }
}
