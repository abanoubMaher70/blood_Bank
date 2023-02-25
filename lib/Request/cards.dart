// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RequestCard extends StatelessWidget {
  const RequestCard({Key? key}) : super(key: key);

  static TextStyle res = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static TextStyle ress = TextStyle(
    color: Colors.white.withOpacity(0.75),
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              //Color(0xffC01818),
              // Color.fromARGB(255, 219, 119, 129),
              Color(0xffC01818),
              Colors.red,
            ],
          ),
        ),
        child: Column(
          children: [
            //height from the top
            const SizedBox(height: 15),
            //First two Rows
            SizedBox(
              height: 75,
              child: Row(
                children: [
                  //first space in first two rows
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Patient Name', style: ress),
                      Text('Hospital Name ', style: ress),
                    ],
                  ),
                  //space between first two rows
                  const SizedBox(width: 42),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Antony', style: res),
                      Text('St. Maria Hospital', style: res),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              height: 10,
              thickness: 1,
              indent: 25,
              endIndent: 25,
              color: Colors.white,
            ),
            //Second 3 rows
            SizedBox(
              height: 90,
              child: Row(
                children: [
                  //first space in first two rows
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Required', style: ress),
                      Text('Blood Type', style: ress),
                      Text('Amount of Blood', style: ress),
                    ],
                  ),
                  //space between first two rows
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Whole Blood', style: res),
                      Text('B+', style: res),
                      Text('3 Bags', style: res),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class BloodInfoCard extends StatelessWidget {
  const BloodInfoCard({Key? key}) : super(key: key);

  final TextStyle res = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  final TextStyle ress = const TextStyle(
    color: Color(0xffA6A5A5),
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

/*
  void getBloodType() async {
    User user = FirebaseAuth.instance.currentUser!;
    FirebaseFirestore.instance.collection("users").doc(user.uid).get().then(
      (value) {
        Map<String, dynamic>? data = value.data();
      },
    );
  }
  */

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: 360,
      //width: MediaQuery.of(context).size.width,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Blood Request', style: res),
                  Text('In Progress', style: ress),
                ],
              ),
              Container(
                width: 75,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color(0xffDE0A1E),
                ),
                child: const Center(
                  child: Text(
                    "B+",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          SizedBox(
            height: 75,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Patient Name', style: ress),
                    Text('Required ', style: ress),
                  ],
                ),
                const SizedBox(width: 42),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Antony', style: res),
                    Text('Whole Blood', style: res),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      width: 360,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffC01818),
            Colors.red,
          ],
        ),
      ),
      child: Column(
        children: [
          //height from the top
          const SizedBox(height: 15),
          SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Booking Information', style: RequestCard.res),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Day', style: RequestCard.res),
                        Text('00', style: RequestCard.ress),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Text('Hours', style: RequestCard.res),
                        Text('18', style: RequestCard.ress),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Text('Min', style: RequestCard.res),
                        Text('50', style: RequestCard.ress),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Text('Sec', style: RequestCard.res),
                        Text('40', style: RequestCard.ress),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 5,
                  thickness: 2,
                  color: Colors.white,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cairo University Hospitals', style: RequestCard.ress),
                    Text('Cairo', style: RequestCard.res),
                  ],
                ),
                Row(
                  children: [
                    Text('18 - 9 - 2022', style: RequestCard.res),
                    const SizedBox(width: 40),
                    Text('9 : 30 Am', style: RequestCard.res),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const SizedBox(
                        height: 30,
                        child: Center(
                          child: Text(
                            'Update',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 30,
                        child: Center(
                          child: Row(
                            children: const [
                              Icon(
                                IconlyBold.send,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Navigate',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecentDonationsCard extends StatelessWidget {
  const RecentDonationsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 360.0,
      height: 220.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffC01818),
            Colors.red,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date', style: RequestCard.ress),
                  Text('18 - 9 - 2022', style: RequestCard.res),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Time', style: RequestCard.ress),
                  const SizedBox(width: 100),
                  Text('9:30 Am', style: RequestCard.res),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hospital Name', style: RequestCard.ress),
              Text('Cairo University Hosiptals', style: RequestCard.res),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Type of Donation', style: RequestCard.ress),
              Text('Hole Blood', style: RequestCard.res),
            ],
          ),
        ],
      ),
    );
  }
}
