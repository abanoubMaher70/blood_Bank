import 'package:blood_bank/Profile/setting_page.dart';
import 'package:blood_bank/Profile/user_qr_code.dart';
import 'package:blood_bank/Request/card_pages.dart';
import 'package:blood_bank/get_data.dart';
import 'package:blood_bank/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconly/iconly.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(IconlyLight.setting),
                        iconSize: 28,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.black.withOpacity(0.35),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          IconlyBold.profile,
                          size: 40,
                          color: Color(0xffFFB3BF),
                        ),
                      ),
                    ),
                    const GetUserName(),
                    const SizedBox(width: 120),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          padding: const EdgeInsets.all(0),
                          icon: const Icon(IconlyBold.scan),
                          color: const Color(0xffDE0A1E),
                          iconSize: 28,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UserQrCode()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Blood Units',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 7),
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
                          builder: (context) => const RecentDonationsPage()),
                    );
                  },
                  title: const Text(
                    'My Donation',
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
                          builder: (context) => const RequestCardPage()),
                    );
                  },
                  title: const Text(
                    'My Requests',
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
                          builder: (context) => const ScheduleCardPage()),
                    );
                  },
                  title: const Text(
                    'My Schedule',
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
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      _signOut();
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => const Login()),
                          (Route<dynamic> route) => false);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Log Out',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(IconlyLight.logout, size: 26)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
