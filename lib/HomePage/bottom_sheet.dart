import 'package:blood_bank/Request/hospitals_page.dart';
import 'package:blood_bank/Request/request_for_blood.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

modalBottomSheet(BuildContext context) {
  Widget selectContainer(
    Widget image,
    String text,
    void Function()? onTap,
    double textTopPositione,
    String buttonText,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -10,
              top: -20,
              child: SvgPicture.asset(
                'assets/blob.svg',
                color: Colors.white,
                width: 175,
                height: 175,
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: SizedBox(
                width: 90,
                height: 90,
                child: image,
              ),
            ),
            Positioned(
              top: textTopPositione,
              left: 175,
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 75,
              left: 175,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(85, 35),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  primary: Colors.white,
                  //shadowColor: Colors.transparent,
                ),
                onPressed: onTap,
                child: Text(
                  buttonText,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (builder) {
        return SizedBox(
          height: 350,
          //could change this to Color(0xFF737373),
          //so you don't have to change MaterialApp canvasColor
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0))),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  selectContainer(
                    Image.asset('assets/blood-bank.png'),
                    'Find a BLood\nBank',
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HospitalsList(),
                          ));
                    },
                    25,
                    'Maps',
                  ),
                  const SizedBox(height: 25),
                  selectContainer(
                    SvgPicture.asset("assets/Blood.svg"),
                    'Find a Donor',
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RequestBlood(),
                          ));
                    },
                    40,
                    'Request',
                  ),
                ],
              )),
        );
      });
}
