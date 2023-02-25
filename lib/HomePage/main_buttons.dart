// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class MainButtons extends StatelessWidget {
  MainButtons(
      {Key? key,
      required this.imagePath,
      this.leftPosition = 85,
      this.topPosition = 15,
      required this.boldText,
      required this.text,
      required this.onTap})
      : super(key: key);

  final void Function()? onTap;
  String text, boldText;
  Widget imagePath;
  double leftPosition, topPosition;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          onPrimary: const Color(0xffBDBDBD),
        ),
        onPressed: onTap,
        child: Stack(
          children: [
            Positioned(
              left: leftPosition,
              top: topPosition,
              child: imagePath,
            ),
            Positioned(
              left: 16,
              top: 70,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 17,
                  color: Color(0xffBDBDBD),
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 90,
              child: Text(
                boldText,
                style: const TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
