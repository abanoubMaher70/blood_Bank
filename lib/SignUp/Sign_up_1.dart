// ignore_for_file: file_names
import 'package:blood_bank/Componants/circle_with_icon.dart';
import 'package:blood_bank/Componants/my_text_form_field.dart';
import 'package:blood_bank/Componants/underline_text.dart';
import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/SignUp/sign_up_2.dart';
import 'package:blood_bank/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({Key? key}) : super(key: key);

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  final GlobalKey<FormState> _formField = GlobalKey<FormState>();

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? username;
  String? email;
  String? pass;

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 25),
                const RedCircle(
                  backgroundColor: Color(0xffDE0A1E),
                  svgColor: Colors.white,
                ),
                const SizedBox(height: 40),
                //text under circle
                const Text(
                  'Sign Up For Free',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Form(
                  key: _formField,
                  child: Column(
                    children: [
                      //UserNameForm
                      MyFormField(
                        controller: _userNameController,
                        keyboardType: TextInputType.text,
                        hintText: 'User Name',
                        value: username,
                        setIcon: true,
                        icon: SvgPicture.asset('assets/person.svg'),
                        validator: (username) {
                          if (username!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(username)) {
                            return "User name is required.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 12),
                      //EmailForm
                      MyFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Email',
                        value: email,
                        validator: (email) {
                          if (email!.isEmpty) {
                            return "Email cannot be empty.";
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(email)) {
                            return "Please enter a valid email address.";
                          } else {
                            return null;
                          }
                        },
                        setIcon: true,
                        icon: SvgPicture.asset('assets/Message.svg'),
                      ),
                      const SizedBox(height: 12),
                      //PasswordForm
                      MyFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: isVisible,
                        hintText: 'Password',
                        value: pass,
                        validator: (pass) {
                          if (pass!.isEmpty) {
                            return "Please enter your password";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.done,
                        setIcon: true,
                        icon: SvgPicture.asset('assets/Lock.svg'),
                        suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: isVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),

                RichText(
                  text: TextSpan(
                    text: "By singning up, you'r agree to our ",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.30),
                      fontSize: 14,
                    ),
                    children: const [
                      TextSpan(
                        text: "Terms & Conditions\n",
                        style: TextStyle(
                          color: Color(0xffDE0A1E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "and ",
                      ),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: TextStyle(
                          color: Color(0xffDE0A1E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 60),
                //NextButton
                ActionButton(
                  text: 'Continue',
                  onTap: () {
                    if (_formField.currentState!.validate()) {
                      _formField.currentState!.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUp2(
                                  userName: _userNameController.text,
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                )),
                      );
                    }
                  },
                ),
                //Return to Login Screen
                const SizedBox(height: 20),
                UnderLineText(
                    text: 'already have an account?',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
