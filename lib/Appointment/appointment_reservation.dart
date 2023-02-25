import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/HomePage/start_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppoinmentReservation extends StatelessWidget {
  const AppoinmentReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  title: "Make an appointment",
                  isBoldTitle: true,
                  visibleDescription: false,
                  descriptionTitle: "",
                ),
                const SizedBox(height: 10),
                const Text(
                  'Cairo University Hospital',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  'Cairo',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Type of Donation',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  'Whole Blood',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Time',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  '9:30 Am',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Date',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  '18 - 9 - 2022',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Time You Spend',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  '20 min',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 35),
                const Text(
                  'Navigate to Hospital Location',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 55,
                  width: 140,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF352555),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          IconlyBold.send,
                          color: Color(0xFF352555),
                        ),
                        Text(
                          'Navigate',
                          style: TextStyle(
                            color: Color(0xFF352555),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  height: 130,
                  color: Colors.grey[300],
                ),
                const SizedBox(height: 25),
                ActionButton(
                  text: "Add to calendar",
                  isBold: false,
                  isGradient: false,
                  width: double.infinity,
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const StartApp()),
                        (Route<dynamic> route) => false);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
