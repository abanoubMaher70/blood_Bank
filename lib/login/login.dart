import 'package:blood_bank/HomePage/start_page.dart';
import 'package:blood_bank/login/forgot_pass.dart';
import 'package:blood_bank/login/google_button.dart';
import 'package:blood_bank/Componants/my_text_form_field.dart';
import 'package:blood_bank/Componants/underline_text.dart';
import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/Componants/circle_with_icon.dart';
import 'package:blood_bank/SignUp/Sign_up_1.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static void showSnackBar(BuildContext context, String text,
      {Color color = const Color(0xffDE0A1E)}) {
    final snackBar = SnackBar(
      content: Text(text),
      duration: const Duration(seconds: 3),
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      padding: const EdgeInsets.all(18),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = true;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  String myemail = "";
  String mypass = "";

//Sign In Method With Email And Password
  signIn() async {
    //Show CircularProgressIndicator
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color(0xffDE0A1E),
          ),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
      //pop CircularProgressIndicator
      Navigator.pop(context);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const StartApp()),
          (Route<dynamic> route) => false);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      String? errorType;
      switch (e.message) {
        case 'ERROR_INVALID_EMAIL':
          errorType = "Your email address appears to be malformed.";
          break;
        case 'The email address is badly formatted.':
          errorType = "The account you want to sign in with is not valid.";
          break;
        case 'There is no user record corresponding to this identifier. The user may have been deleted.':
          errorType = "User with this email doesn't exist.";
          break;
        case 'ERROR_EMAIL_ALREADY_IN_USE':
          errorType =
              "The email has already been registered. Please login or reset your password.";
          break;
        case 'The password is invalid or the user does not have a password.':
          errorType = "Your Email or password is wrong.";
          break;
        case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
          errorType = "No internet connection";
          break;
        case 'Given String is empty or null':
          errorType = "Please enter your \"Email\" and your \"Password\" ";
          break;
        // ...
        default:
          errorType = "${e.message}. Please try again.";
      }
      Login.showSnackBar(context, errorType);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Stack(
                    children: [
                      RedCircle(
                        backgroundColor: Colors.grey[50],
                        svgColor: const Color(0xffDE0A1E),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Login To Your Account',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    key: formstate,
                    child: Column(
                      children: [
                        MyFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'Email',
                          value: myemail,
                          validator: (myemail) {
                            if (myemail!.isEmpty) {
                              return "Email cannot be empty.";
                            }
                            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(myemail)) {
                              return "Please enter a valid email address.";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 15),
                        MyFormField(
                          controller: passController,
                          keyboardType: TextInputType.text,
                          obscureText: isVisible,
                          hintText: 'Password',
                          value: mypass,
                          textInputAction: TextInputAction.done,
                          validator: (mypass) {
                            if (mypass!.isEmpty) {
                              return "Password cannot be empty.";
                            } else {
                              return null;
                            }
                          },
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
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      UnderLineText(
                          text: 'Forgot Your Password?',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ForgetPassword()),
                            );
                          }),
                    ],
                  ),
                  const SizedBox(height: 5),
                  ActionButton(
                    text: "Login",
                    onTap: () {
                      if (formstate.currentState!.validate()) {
                        formstate.currentState!.save();
                        signIn();
                      }
                    },
                    isBold: true,
                    isGradient: false,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 15),
                  const Text('Or continue with'),
                  const SizedBox(height: 15),
                  const GoogleButton(),
                  const SizedBox(height: 25),
                  UnderLineText(
                    text: "Don't have an account?",
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp1()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
