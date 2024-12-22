import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final Map<String, List<dynamic>> tiles = {
    "icons": [
      Icons.south_america,
      Icons.notifications,
      Icons.location_on,
    ],
    "titles": [
      "Language",
      "Notification",
      "Location",
    ],
    "onTap": [
      () {},
      null,
      null,
    ]
  };

  final Map<String, List<dynamic>> accountAndSecurityTiles = {
    "icons": [
      Icons.person,
      Icons.text_snippet_rounded,
      Icons.chat_bubble,
    ],
    "titles": [
      "Account Information",
      "Terms & Conditions",
      "About Us",
    ],
    "onTap": [
      () {
        Get.toNamed('/accountInfoScreen');
      },
      () {
        Get.toNamed('/termsScreen');
      },
      null,
    ]
  };

  List<bool> switchValues = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Edit Profiles",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            ListView.separated(
              itemCount: tiles["titles"]!.length,
              shrinkWrap: true,
              separatorBuilder: (_, i) => const SizedBox(height: 7),
              itemBuilder: (_, i) => ListTile(
                title: Text(
                  tiles["titles"]![i],
                  style: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    color: secondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(tiles["icons"]![i]),
                iconColor: secondary,
                trailing: tiles["onTap"]![i] == null
                    ? Switch(
                        value: switchValues[i - 1],
                        onChanged: (value) => setState(
                          () => switchValues[i - 1] = value,
                        ),
                      )
                    : const Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "Account & Security",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  color: primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.separated(
              itemCount: accountAndSecurityTiles["titles"]!.length,
              shrinkWrap: true,
              separatorBuilder: (_, i) => const SizedBox(height: 7),
              itemBuilder: (_, i) => ListTile(
                title: Text(
                  accountAndSecurityTiles["titles"]![i],
                  style: const TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    color: secondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(accountAndSecurityTiles["icons"]![i]),
                iconColor: secondary,
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: accountAndSecurityTiles["onTap"]![i],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
