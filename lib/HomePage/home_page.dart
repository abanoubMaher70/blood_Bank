import 'package:blood_bank/Appointment/appointment_location.dart';
import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/HomePage/bottom_sheet.dart';
import 'package:blood_bank/HomePage/image_slider.dart';
import 'package:blood_bank/HomePage/main_buttons.dart';
import 'package:blood_bank/Request/info_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const HomeAppBar(),
              const SizedBox(height: 5),
              const CustomImageSlider(),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Services",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.55)),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainButtons(
                    text: "Need a",
                    boldText: "Blood",
                    onTap: () {
                      modalBottomSheet(context);
                    },
                    imagePath: SvgPicture.asset('assets/Blood.svg'),
                    leftPosition: 105,
                    topPosition: 20,
                  ),
                  const SizedBox(height: 5),
                  MainButtons(
                    text: "I want to",
                    boldText: "Donate",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const Appointmentlocation()));
                    },
                    imagePath:
                        Image.asset('assets/donate.png', width: 77, height: 77),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Emergency",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.55),
                    ),
                  ),
                ],
              ),
              Column(
                children: const [
                  SizedBox(height: 10),
                  RequesteInfo(),
                  SizedBox(height: 10),
                  HospitalsInfo(),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
