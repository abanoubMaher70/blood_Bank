import 'package:flutter/material.dart';

class CustomGroupButton extends StatefulWidget {
  const CustomGroupButton({Key? key}) : super(key: key);
  static String value = "A+";
  @override
  State<CustomGroupButton> createState() => _CustomGroupButtonState();
}

class _CustomGroupButtonState extends State<CustomGroupButton> {
  Widget customGropButton(String text, type) {
    return Container(
      width: 73,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: (CustomGroupButton.value == type)
              ? const Color(0xffDE0A1E)
              : const Color(0xffF1F5F9),
          width: 0,
        ),
        color: (CustomGroupButton.value == type)
            ? const Color(0xffDE0A1E)
            : const Color(0xffF1F5F9),
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            CustomGroupButton.value = type;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: (CustomGroupButton.value == type)
              ? const Color(0xffDE0A1E)
              : const Color(0xffF1F5F9),
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: (CustomGroupButton.value == type)
                ? Colors.white
                : const Color(0xff0F172A),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 155,
        child: Center(
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            children: [
              customGropButton("A+", "A+"),
              customGropButton("A-", "A-"),
              customGropButton("B+", "B+"),
              customGropButton("B-", "B-"),
              customGropButton("AB+", "AB+"),
              customGropButton("AB-", "AB-"),
              customGropButton("O+", "O+"),
              customGropButton("O-", "O-"),
            ],
          ),
        ));
  }
}
