import 'package:flutter/material.dart';

class UnderLineText extends StatelessWidget {
  const UnderLineText({Key? key, required this.text, required this.onTap})
      : super(key: key);

  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color(0xffDE0A1E),
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
