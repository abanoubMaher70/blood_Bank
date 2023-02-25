import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/login/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  //Update User Request
  updateRequestData() async {
    //To Get Current User
    User user = FirebaseAuth.instance.currentUser!;
    CollectionReference request =
        FirebaseFirestore.instance.collection('Requests');
    //request.doc(user.uid).snapshots();
    request.doc(user.uid).update(
      {
        "amountofBlood": 200,
        "patientName": "n",
      },
    ).then((request) {
      Login.showSnackBar(
        context,
        "Your data updated successfully",
        color: Colors.green,
      );
    }).catchError((e) {
      Login.showSnackBar(
        context,
        "Please try again. $e.",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Center(
                child: Text(
                  "Firebase",
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 100),
              const SizedBox(height: 100),
              ActionButton(
                text: "Update Data",
                isBold: true,
                isGradient: false,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GetUserName extends StatelessWidget {
  const GetUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DocumentReference<Map<String, dynamic>> user = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid);

    return FutureBuilder<DocumentSnapshot>(
      future: user.get(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("User Name doesn't exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${data['userName']} ",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Blood Type ${data['bloodType']}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
              ],
            ),
          );
        }
        return const Text("loading...");
      },
    );
  }
}
