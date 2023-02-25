import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomImageSlider extends StatefulWidget {
  const CustomImageSlider({Key? key}) : super(key: key);

  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffDE0A1E),
                Color(0xffF09099),
              ],
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              Transform.scale(
                scale: 1.030,
                child: Transform.translate(
                  offset: const Offset(-7, 15),
                  child: SvgPicture.asset(
                    'assets/Object.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Positioned(
                left: 195,
                top: 20,
                child: Text(
                  "Together We Can\nSave Millions Of\nLives",
                  style: TextStyle(
                    fontSize: 19.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 195,
                top: 105,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      primary: Colors.white,
                      shadowColor: Colors.transparent),
                  onPressed: () {},
                  child: const Text(
                    "Donate Now",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xffDE0A1E),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          alignment: const Alignment(0, 0.65),
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: Color(0xffDE0A1E),
              dotColor: Color(0xffC0C0C0),
            ),
          ),
        ),
      ],
    );
  }
}
