import 'package:blood_bank/Componants/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class UserQrCode extends StatelessWidget {
  const UserQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: CustomAppBar(
                    title: "User Details",
                    isBoldTitle: true,
                    visibleDescription: false,
                    descriptionTitle: "",
                  ),
                ),
                Divider(
                  height: 0,
                  color: Colors.black.withOpacity(0.30),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    child: Icon(
                      IconlyBold.profile,
                      size: 100,
                      color: Color(0xffFFB3BF),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'ID 8760351890',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Your QR code is private. if you share it\nWith someone, they can scan it.',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.50),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const CircleAvatar(
                  radius: 85,
                  backgroundColor: Colors.white,
                  child: Icon(
                    IconlyBold.scan,
                    size: 100,
                    color: Color(0xffDE0A1E),
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
