import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

class RequesteInfo extends StatelessWidget {
  const RequesteInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Cairo\n",
                  style: TextStyle(
                    height: 1.55,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Hospital, 1.5 km away\n",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffA6A5A5),
                      ),
                    ),
                    TextSpan(
                      text: "Requested from 25 min ago",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffA6A5A5),
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/Blood.svg",
                width: 70,
                height: 70,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Cancel",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.55),
                ),
              ),
              const SizedBox(width: 40),
              const Text(
                "Donate",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffDE0A1E),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HospitalsInfo extends StatelessWidget {
  const HospitalsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Assiut University Hospital\n",
                  style: TextStyle(
                    height: 1.70,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "University hospital\n",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffA6A5A5),
                      ),
                    ),
                    TextSpan(
                      text: "1.5 km away",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffA6A5A5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 205,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      IconlyLight.time_circle,
                      color: Color(0xffA6A5A5),
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Open 24 Hours",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffA6A5A5),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyBold.call,
                  color: Color(0xff352555),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyBold.send,
                  color: Color(0xff352555),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
