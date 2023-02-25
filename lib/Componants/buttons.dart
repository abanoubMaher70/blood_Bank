// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  ActionButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isBold = false,
    this.isGradient = true,
    this.width = 175,
    this.height = 60,
  }) : super(key: key);

  final double width;
  double height;
  final String text;
  final void Function()? onTap;
  final bool isBold;
  bool isGradient;

  FontWeight bold = FontWeight.bold;
  FontWeight normal = FontWeight.normal;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.0),
          gradient: isGradient
              ? const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffF29DA5),
                    Color(0xffDE0A1E),
                  ],
                )
              : const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffDE0A1E),
                    Color(0xffDE0A1E),
                  ],
                )),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              primary: Colors.transparent,
              shadowColor: Colors.transparent),
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: isBold ? bold : normal,
              color: Colors.white,
            ),
          )),
    );
  }
}

class BackBtn extends StatelessWidget {
  const BackBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        color: const Color(0xffFFB3B3).withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xffDE0A1E),
        ),
      ),
    );
  }
}
