import 'package:flutter/material.dart';
import 'package:tash5esy/utils/colors.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: secondary),
        title: const Text(
          "Account Information",
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
          ListTile(
            title: Text(
              "Two Step Verification",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16,
                color: secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(Icons.verified_user_outlined),
            iconColor: secondary,
          ),
          ListTile(
            title: Text(
              "Change Number",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16,
                color: secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(Icons.logout),
            iconColor: secondary,
          ),
          ListTile(
            title: Text(
              "Request Account info",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16,
                color: secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(Icons.description_outlined),
            iconColor: secondary,
          ),
          ListTile(
            title: Text(
              "Dalete Account",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 16,
                color: secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: Icon(Icons.delete),
            iconColor: secondary,
          ),
        ],
      ),
    );
  }
}
