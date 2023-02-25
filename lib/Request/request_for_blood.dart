// ignore_for_file: must_be_immutable
import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/Componants/drop_down.dart';
import 'package:blood_bank/Componants/my_text_form_field.dart';
import 'package:blood_bank/HomePage/start_page.dart';
import 'package:blood_bank/login/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RequestBlood extends StatefulWidget {
  const RequestBlood({Key? key}) : super(key: key);

  @override
  State<RequestBlood> createState() => _RequestBloodState();
}

class _RequestBloodState extends State<RequestBlood> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  String? name;

  returnBloodValue() {
    return FirstDropDown.selectedValue;
  }

  returnBLoodTypeValue() {
    return SecondDropDown.selectedValue;
  }

  requestForBlood() async {
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
      User user = FirebaseAuth.instance.currentUser!;
      //add user details
      Future addUserRequest() async {
        await FirebaseFirestore.instance
            .collection('Requests')
            .doc(user.uid)
            .set(
          {
            'patientName': _nameController.text,
            'hospitalLocation': _locationController.text,
            'required': returnBloodValue(),
            'requiredBloodType': returnBLoodTypeValue(),
            'amountofBlood': counter,
            'requestDate': DateTime.now(),
          },
        );
      }

      await addUserRequest();
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
        case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
          errorType = "Network error. Check your internet connection";
          break;
        case "ERROR_OPERATION_NOT_ALLOWED":
        case "operation-not-allowed":
          errorType = "Server error, please try again later.";
          break;
        case "ERROR_TOO_MANY_REQUESTS":
          errorType = "Too many requests in this account.";
          break;
        case 'Given String is empty or null':
          errorType = "Please fill fields ";
          break;
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  title: "Request Blood",
                  isBoldTitle: true,
                  visibleDescription: true,
                  descriptionTitle: "Please Fill The Information\nBelow",
                  desTitleSize: 26,
                ),
                const SizedBox(height: 25),
                const Text(
                  "Patient Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Form(
                  key: formstate,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Patient Name
                      MyFormField(
                        controller: _nameController,
                        hintText: "e.g. Antony",
                        value: name,
                        keyboardType: TextInputType.text,
                        validator: (name) {
                          if (name!.isEmpty) {
                            return "Patient name cannot be empty.";
                          }
                          if (!RegExp(r'^[a-z A-Z]+$').hasMatch(name)) {
                            return "Please enter a valid patient name.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Hospital Name / Location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      MyFormField(
                        controller: _locationController,
                        hintText: "Address, Street, place",
                        value: name,
                        keyboardType: TextInputType.text,
                        validator: (name) {
                          if (name!.isEmpty) {
                            return "Hospital location cannot be empty.";
                          }
                          if (!RegExp(r'^[a-z A-Z]+$').hasMatch(name)) {
                            return "Please enter a valid Hospital location.";
                          } else {
                            return null;
                          }
                        },
                        suffix: const Icon(
                          IconlyBold.location,
                          color: Color(0xffDE0A1E),
                        ),
                      ),
                      const SizedBox(height: 20),
                      FirstDropDown(
                        labelText: "Required",
                        hint: "Blood, Plasma, platelet",
                        dropdownColor: Colors.white,
                        items: const [
                          'Blood',
                          'Plasma',
                          'platelet',
                        ],
                      ),
                      const SizedBox(height: 20),
                      SecondDropDown(
                        labelText: "Required Blood Type",
                        hint: "A+, A-, B+, B- .....",
                        dropdownColor: Colors.white,
                        items: const [
                          'A+',
                          'A-',
                          'B+',
                          'B-',
                          'AB+',
                          'AB-',
                          'O+',
                          'O-',
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Amount of Blood",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                const AmountContainer(),
                const SizedBox(height: 30),
                Center(
                  child: ActionButton(
                    text: "Request",
                    isBold: true,
                    onTap: () {
                      if (formstate.currentState!.validate()) {
                        formstate.currentState!.save();
                        requestForBlood();
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AmountContainer extends StatefulWidget {
  const AmountContainer({Key? key}) : super(key: key);

  @override
  State<AmountContainer> createState() => _AmountContainerState();
}

int counter = 3;

class _AmountContainerState extends State<AmountContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PlusMinusButtons(
              icon: Icons.remove_rounded,
              iconColor: const Color(0xffDE0A1E),
              backgroundColor: const Color(0xffFFB3B3).withOpacity(0.20),
              onTap: () {
                setState(() {
                  if (counter > 1) {
                    counter--;
                  }
                });
              },
            ),
            Text(
              "$counter Bags",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.65),
                fontSize: 16,
              ),
            ),
            PlusMinusButtons(
              icon: Icons.add_rounded,
              iconColor: Colors.white,
              backgroundColor: const Color(0xffDE0A1E),
              onTap: () {
                setState(() {
                  if (counter < 10) {
                    counter++;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PlusMinusButtons extends StatelessWidget {
  PlusMinusButtons({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.onTap,
  }) : super(key: key);

  Color backgroundColor, iconColor;
  IconData icon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 43,
        height: 43,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
            size: 25,
          ),
        ),
      ),
    );
  }
}
