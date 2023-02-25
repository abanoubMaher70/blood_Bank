import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/Request/cards.dart';
import 'package:blood_bank/Request/info_cards.dart';
import 'package:flutter/material.dart';

class RequestCardPage extends StatelessWidget {
  const RequestCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Your Request',
                isBoldTitle: true,
                visibleDescription: true,
                descriptionTitle: 'Information about Requests',
                desTitleSize: 20,
                visibleSteps: false,
                stepNum: 0,
              ),
              const SizedBox(height: 20),
              const RequestCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class ScheduleCardPage extends StatelessWidget {
  const ScheduleCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Your Schedule',
                isBoldTitle: true,
                visibleDescription: true,
                descriptionTitle: 'Information about appointment',
                desTitleSize: 20,
              ),
              const SizedBox(height: 20),
              const ScheduleCard(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class RequestDetails extends StatelessWidget {
  const RequestDetails({Key? key}) : super(key: key);

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
                  title: "Request Details",
                  isBoldTitle: true,
                  visibleDescription: true,
                  descriptionTitle: "All The Information About\nRequest",
                  desTitleSize: 25,
                ),
                const SizedBox(height: 20),
                const BloodInfoCard(),
                const SizedBox(height: 25),
                const HospitalsInfo(),
                const SizedBox(height: 150),
                ActionButton(
                  text: "Donate",
                  isBold: true,
                  isGradient: false,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecentDonationsPage extends StatelessWidget {
  const RecentDonationsPage({Key? key}) : super(key: key);

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
                  title: "Your Donation",
                  isBoldTitle: true,
                  visibleDescription: true,
                  descriptionTitle:
                      "Information about all your\nrecent donations",
                  desTitleSize: 23,
                ),
                const SizedBox(height: 20),
                const RecentDonationsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
