import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/Componants/search_bar.dart';
import 'package:blood_bank/Request/card_pages.dart';
import 'package:blood_bank/Request/info_cards.dart';
import 'package:flutter/material.dart';

class Requests extends StatelessWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CustomAppBar(
                  title: "Requests",
                  isBoldTitle: true,
                  visibleDescription: false,
                  descriptionTitle: "",
                  backButton: false,
                ),
                SearchBar(),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RequestDetails(),
                        ));
                  },
                  child: const RequesteInfo(),
                ),
                const SizedBox(height: 20),
                const RequesteInfo(),
                const SizedBox(height: 20),
                const RequesteInfo(),
                const SizedBox(height: 20),
                const RequesteInfo(),
                const SizedBox(height: 20),
                const RequesteInfo(),
                const SizedBox(height: 20),
                const RequesteInfo(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
