import 'package:flutter/material.dart';
import 'package:tash5esy/utils/colors.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          textAlign: TextAlign.center,
          "Notifications",
          style: TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: secondary,
            fontSize: 20,
          ),
        ),
        iconTheme: const IconThemeData(color: secondary),
        actions: [
          Container(
            width: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(100, 10, 111, 183),
              borderRadius: BorderRadius.circular(15),
              shape: BoxShape.rectangle,
            ),
            child: const Text(
              textAlign: TextAlign.center,
              "News",
              style:
                  TextStyle(fontFamily: "Lato", fontSize: 15, color: primary),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(100, 10, 111, 183),
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
              ),
              child: const Text(
                textAlign: TextAlign.center,
                "Today",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 18,
                  color: primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            trailing: const Text(
              "Mark All",
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 15,
                  color: secondary,
                  fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const Icon(Icons.calendar_month_outlined, color: Colors.white),
              ],
            ),
            title: const Text(
              "Scheduled Appointment",
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: primary),
            ),
            subtitle: const Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              "lorem",
              style: TextStyle(fontFamily: "Lato", fontSize: 12),
            ),
            trailing: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("2m"),
                Icon(
                  Icons.check_box_outlined,
                  color: green,
                )
              ],
            ),
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const Icon(Icons.calendar_month_outlined, color: Colors.white),
              ],
            ),
            title: const Text(
              "Scheduled Change",
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: primary),
            ),
            subtitle: const Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              "lorem",
              style: TextStyle(fontFamily: "Lato", fontSize: 12),
            ),
            trailing: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("1h"),
                Icon(
                  Icons.check_box_outlined,
                  color: green,
                )
              ],
            ),
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const Icon(Icons.calendar_month_outlined, color: Colors.white),
              ],
            ),
            title: const Text(
              "Medical Notes",
              style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: primary),
            ),
            subtitle: const Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              "lorem",
              style: TextStyle(fontFamily: "Lato", fontSize: 12),
            ),
            trailing: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("2h"),
                Icon(
                  Icons.check_box_outlined,
                  color: green,
                )
              ],
            ),
          ),
          ListTile(
            leading: Container(
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(100, 10, 111, 183),
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Yesterday",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 18,
                    color: primary,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            title: const Text(
              "Scheduled Appointment",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: primary,
              ),
            ),
            subtitle: const Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              "lorem",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 12,
              ),
            ),
            trailing: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("1d"),
                Icon(
                  Icons.check_box_outlined,
                  color: green,
                )
              ],
            ),
          ),
          ListTile(
            leading: Container(
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(100, 10, 111, 183),
                borderRadius: BorderRadius.circular(15),
                shape: BoxShape.rectangle,
              ),
              child: const Text(
                textAlign: TextAlign.center,
                "15 April",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 18,
                  color: primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            title: const Text(
              "Scheduled Appointment",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: primary,
              ),
            ),
            subtitle: const Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              "lorem",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 12,
              ),
            ),
            trailing: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("45w"),
                Icon(
                  Icons.check_box_outlined,
                  color: green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
