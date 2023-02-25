import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/Componants/search_bar.dart';
import 'package:blood_bank/Request/info_cards.dart';
import 'package:flutter/material.dart';

class HospitalsList extends StatelessWidget {
  const HospitalsList({Key? key}) : super(key: key);

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
                  title: "Hospitals",
                  isBoldTitle: true,
                  visibleDescription: false,
                  descriptionTitle: "",
                ),
                SearchBar(),
                const SizedBox(height: 20),
                const HospitalsInfo(),
                const SizedBox(height: 20),
                const HospitalsInfo(),
                const SizedBox(height: 20),
                const HospitalsInfo(),
                const SizedBox(height: 20),
                const HospitalsInfo(),
                const SizedBox(height: 20),
                const HospitalsInfo(),
                const SizedBox(height: 20),
                const HospitalsInfo(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
