import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tash5esy/utils/colors.dart';
import 'package:tash5esy/view/widgets/logout_bottom_sheet.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final Map<String, List<dynamic>> tiles = {
    "icons": [
      Icons.person,
      Icons.family_restroom,
      Icons.settings_outlined,
      Icons.lock_outline,
      Icons.question_mark,
      Icons.people_alt,
      Icons.logout,
    ],
    "titles": [
      "Edit Profile",
      "Join Your Family",
      "Settings",
      "Privacy policy",
      "Help",
      "Invite Your Friends",
      "Logout",
    ],
    "onTap": [
      () => Get.toNamed("/editProfileScreen"),
      null,
      () => Get.toNamed("/settingsScreen"),
      () => Get.toNamed("/policyScreen"),
      () => Get.toNamed("/helpCenterScreen"),
      () => Get.toNamed("/inviteFriendsScreen"),
      () => Get.bottomSheet(LogoutBottomSheet()),
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 15),
            onPressed: () {},
            icon: const Icon(Icons.dark_mode_outlined),
            color: Colors.black,
          )
        ],
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/avatar.png'),
            ),
            const Text(
              "Sarah Doe",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 24,
                color: primary,
                fontWeight: FontWeight.w800,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: tiles["titles"]!.length,
              separatorBuilder: (_, i) => const SizedBox(height: 7),
              itemBuilder: (_, i) {
                return ListTile(
                  title: Text(
                    tiles["titles"]![i],
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 16,
                      color: secondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: secondary,
                    child: Icon(
                      tiles["icons"]![i],
                      color: Colors.white,
                    ),
                  ),
                  trailing: tiles["onTap"]![i] == null
                      ? Text(
                          "SOON",
                          style: TextStyle(
                            fontFamily: "Lato",
                            fontSize: 18,
                            color: green,
                          ),
                        )
                      : Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: grey2,
                        ),
                  onTap: tiles["onTap"]![i],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
