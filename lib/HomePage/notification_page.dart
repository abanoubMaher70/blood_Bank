import 'package:blood_bank/Componants/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  static String notificationTime = DateFormat.yMMMMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CustomAppBar(
                  title: "Notifications",
                  isBoldTitle: true,
                  visibleDescription: false,
                  descriptionTitle: "",
                ),
                buildNotification(
                  Image.asset(
                    "assets/correct.jpg",
                  ),
                  "Your appointment has been\nboocking successfully",
                  notificationTime,
                ),
                const SizedBox(height: 20),
                buildNotification(
                  Image.asset(
                    "assets/wrong.jpg",
                  ),
                  "Your request has been cancel",
                  notificationTime,
                ),
                const SizedBox(height: 20),
                buildNotification(
                  Image.asset(
                    "assets/wrong.jpg",
                  ),
                  "Your request has been cancel",
                  notificationTime,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildNotification(
    Widget notificationImg,
    String notificationTxt,
    String notificationTime,
  ) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: notificationImg,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notificationTxt,
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                notificationTime,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const SizedBox(width: 1)
        ],
      ),
    );
  }
}
