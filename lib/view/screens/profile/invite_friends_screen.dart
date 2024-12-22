import 'package:flutter/material.dart';
import 'package:tash5esy/utils/colors.dart';

class InviteFriendsScreen extends StatelessWidget {
  InviteFriendsScreen({super.key});
  final List<String> names = [
    "Maria Jogn",
    "Chikanso Chima",
    "Krystal Jung",
    "Maria Anna",
    "Krystal Jung",
    "Maria Anna",
    "Chikanso Chima",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Invite Your Friends",
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 23,
            color: secondary,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: names.length,
        separatorBuilder: (_, i) => const SizedBox(height: 10),
        itemBuilder: (_, i) => ListTile(
          title: Text(
            names[i],
            style: const TextStyle(
              color: primary,
              fontFamily: "lato",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage:
                AssetImage("assets/images/friend ${(i % 2) + 1}.png"),
          ),
          trailing: Container(
            height: 30,
            width: 80,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondary,
                boxShadow: const [BoxShadow(color: Colors.black12)]),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "lato", fontSize: 15),
                ),
                Icon(Icons.person_add, color: Colors.white, size: 15)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
