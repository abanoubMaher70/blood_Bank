import 'package:blood_bank/Appointment/appointment_reservation.dart';
import 'package:blood_bank/Componants/app_bar.dart';
import 'package:blood_bank/Componants/buttons.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppoinmentDate extends StatefulWidget {
  const AppoinmentDate({Key? key}) : super(key: key);

  @override
  State<AppoinmentDate> createState() => _AppoinmentDateState();
}

bool checkbox = false;

class _AppoinmentDateState extends State<AppoinmentDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "Book an appointment",
                visibleDescription: false,
                descriptionTitle: "",
                visibleSteps: true,
                stepNum: 2,
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[50],
                        child: const Icon(
                          IconlyBold.location,
                          color: Color(0xffDe0A1E),
                        ),
                      ),
                      title: const Text(
                        "From",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: const Text(
                        "cairo",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    /*Stack(
                        children: const [
                          SizedBox(
                            height: 80,
                            child: VerticalDivider(
                              color: Colors.red,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ), */

                    Divider(
                      height: 10,
                      indent: 30,
                      endIndent: 30,
                      color: Colors.black.withOpacity(0.50),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[50],
                        child: const Icon(
                          IconlyBold.heart,
                          color: Color(0xffDe0A1E),
                        ),
                      ),
                      title: const Text(
                        "To",
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: const Text(
                        "Alex",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 185,
                decoration: BoxDecoration(
                  color: const Color(0xFFf1f5f9),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Choose Date',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.white,
                          minWidth: 75,
                          height: 110,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          child: Column(
                            children: const [
                              Text(
                                'SAT',
                                style: TextStyle(
                                  color: Color(0xFF352555),
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                '12',
                                style: TextStyle(
                                  color: Color(0xFF352555),
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.white,
                          minWidth: 75,
                          height: 110,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            children: const [
                              Text(
                                'Sun',
                                style: TextStyle(
                                  color: Color(0xFF352555),
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                '13',
                                style: TextStyle(
                                  color: Color(0xFF352555),
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.white,
                          minWidth: 75,
                          height: 110,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            children: const [
                              Text(
                                'Mon',
                                style: TextStyle(
                                  color: Color(0xFF352555),
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                '14',
                                style: TextStyle(
                                  color: Color(0xFF352555),
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: const Color(0xFF0f172a),
                          minWidth: 75,
                          height: 110,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            children: const [
                              Text(
                                'TUE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                '15',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFf1f5f9),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Choose Time Slot',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            height: 60,
                            minWidth: 100,
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Text(
                              '9 : 00 AM',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            height: 60,
                            minWidth: 100.0,
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              '9 : 30 AM',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            color: const Color(0xFF0f172a),
                            height: 60,
                            minWidth: 100.0,
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              '10:00 AM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: const [
                          SizedBox(width: 7),
                          Icon(
                            IconlyBold.notification,
                            color: Color(0xffDE0A1E),
                            size: 26,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Reminder',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color(0xffDE0A1E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: const EdgeInsets.all(0),
                        title: Text(
                          'Set reminder for your appointment',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: checkbox
                                ? const Color(0xffDE0A1E)
                                : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        activeColor: const Color(0xffDE0A1E),
                        value: checkbox,
                        onChanged: (val) {
                          setState(() {
                            checkbox = val!;
                          });
                        },
                      ),
                      const SizedBox(height: 45),
                      ActionButton(
                        text: "Book",
                        isBold: true,
                        isGradient: false,
                        width: 215,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AppoinmentReservation()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
