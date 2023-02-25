import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/Componants/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class UpdateinfoPage extends StatefulWidget {
  const UpdateinfoPage({Key? key}) : super(key: key);

  @override
  State<UpdateinfoPage> createState() => _UpdateinfoPageState();
}

TextEditingController firstNameController = TextEditingController();
TextEditingController bloodTypeController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController mobileNumberController = TextEditingController();
bool autofocus = false;

class _UpdateinfoPageState extends State<UpdateinfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey[50],
                  width: double.infinity,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BackBtn(),
                      const Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 80),
                      autofocus
                          ? const SizedBox(width: 90, height: 60)
                          : GestureDetector(
                              onTap: () {
                                setState(() {
                                  autofocus = true;
                                });
                                /*
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Your Updated Information"),
                                content: Text(
                                    "${firstNameController.text} \n ${bloodTypeController.text} \n ${emailController.text} \n ${passwordController.text} \n ${mobileNumberController.text} \n ${emailController.text}"),
                                actions: [
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            },
                          );
                          */
                              },
                              child: const SizedBox(
                                height: 60,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    'Update',
                                    style: TextStyle(
                                      color: Color(0xffDE0A1E),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
                Divider(height: 10, color: Colors.black.withOpacity(0.35)),
                const SizedBox(height: 15),
                const Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Icon(
                      IconlyBold.profile,
                      size: 75,
                      color: Color(0xffFFB3BF),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  "GENERAL INFORMATION",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Full Name",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.35),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        autofocus: autofocus,
                        controller: firstNameController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 33,
                          ),
                          border: InputBorder.none,
                          hintText: "Example",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.black.withOpacity(0.35),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Blood Type",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.35),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: UpdateDropDown(
                        hint: 'Blood type',
                        items: const [
                          "A+",
                          "A-",
                          "B+",
                          "B-",
                          "AB+",
                          "AB-",
                          "O+",
                          "O-",
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.black.withOpacity(0.35),
                ),
                const SizedBox(height: 40),
                Text(
                  "MANAGE ACCOUNT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.35),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 33,
                          ),
                          border: InputBorder.none,
                          hintText: "example@gmai.com ",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.black.withOpacity(0.35),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.35),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 33,
                          ),
                          border: InputBorder.none,
                          hintText: "*****",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.black.withOpacity(0.35),
                ),
                const SizedBox(height: 40),
                Text(
                  "CONTACTS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Mobile",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.35),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: mobileNumberController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 33,
                          ),
                          border: InputBorder.none,
                          hintText: "010456...",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  color: Colors.black.withOpacity(0.35),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: autofocus,
                      child: SizedBox(
                        width: 100,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xffDE0A1E),
                              shadowColor: Colors.transparent),
                          child: const Text(
                            "OK",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
