import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBPage extends StatelessWidget {
  const OnBPage({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50),
              //pic
              SizedBox(
                width: double.infinity,
                height: 430,
                child: SvgPicture.asset(image),
              ),
              const SizedBox(height: 15),

              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),

              const SizedBox(height: 18),

              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.5,
                  color: Color(0xff6B6B6B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
