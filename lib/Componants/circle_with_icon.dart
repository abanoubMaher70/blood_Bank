import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RedCircle extends StatelessWidget {
  const RedCircle(
      {Key? key, required this.backgroundColor, required this.svgColor})
      : super(key: key);

  final Color? backgroundColor, svgColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 235,
          height: 235,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
        ),
        Positioned(
          left: 73,
          top: 59,
          child: SizedBox(
              width: 105,
              height: 115,
              child: SvgPicture.asset(
                'assets/BloodGroup.svg',
                color: svgColor,
              )),
        ),
      ],
    );
  }
}
