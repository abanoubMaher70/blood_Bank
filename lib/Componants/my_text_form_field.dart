// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  MyFormField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.setIcon = false,
    required this.hintText,
    required this.value,
    required this.keyboardType,
    this.icon,
    this.suffix,
    this.textInputAction = TextInputAction.next,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  String? value;
  String? Function(String?)? validator;
  bool obscureText;
  final String hintText;
  final TextInputType keyboardType;

  final Widget? icon;
  bool setIcon;
  final Widget? suffix;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: ((val) {
        value = val;
      }),
      onSaved: ((val) {
        value = val;
      }),
      validator: validator,
      textInputAction: textInputAction,
      cursorColor: const Color(0xffDE0A1E),
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        /////////////////////////////
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        /////////////////////////////
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFB3B3).withOpacity(0.75), width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        /////////////////////////////
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffDE0A1E), width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        /////////////////////////////
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffDE0A1E), width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
        /////////////////////////////
        filled: true,
        fillColor: Colors.white,
        prefixIcon: setIcon
            ? Padding(
                padding: const EdgeInsets.all(10.5),
                child: icon,
              )
            : null,
        suffixIcon: suffix,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(0.30),
        ),
      ),
    );
  }
}

/*
 for email validation
      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2.4}'),
      This account is not valid.
 */
