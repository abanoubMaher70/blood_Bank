import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/HomePage/notification_page.dart';
import 'package:blood_bank/Profile/update_profile.dart.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: CustomAppBar(
                    title: "Settings",
                    isBoldTitle: true,
                    visibleDescription: false,
                    descriptionTitle: "",
                  ),
                ),
                Text(
                  'Account Settings',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UpdateinfoPage()),
                    );
                  },
                  title: const Text(
                    'Personal Information',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.black.withOpacity(0.35),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationPage()),
                    );
                  },
                  title: const Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.black.withOpacity(0.35),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
