import 'package:blood_bank/Appointment/appointment_date.dart';
import 'package:blood_bank/Componants/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Appointmentlocation extends StatelessWidget {
  const Appointmentlocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
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
                ),
                const SizedBox(height: 10),
                Text(
                  'Select location',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.50),
                  ),
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
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(width: 25),
                    const Icon(
                      Icons.my_location,
                      color: Color(0xFFDE0A1E),
                      size: 25.0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Show on map',
                        style: TextStyle(
                          color: Color(0xFFDE0A1E),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'RECENT',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.50),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const Icon(
                        IconlyBold.location,
                        color: Color(0xffDE0A1E),
                        size: 40,
                      ),
                      title: const Text(
                        'Assiut University Hospital',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'assiut university hospital',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.45),
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      indent: 55,
                      color: Colors.black.withOpacity(0.50),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const Icon(
                        IconlyBold.location,
                        color: Color(0xffDE0A1E),
                        size: 40,
                      ),
                      title: const Text(
                        'Assiut University Hospital',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'assiut university hospital',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.45),
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      indent: 55,
                      color: Colors.black.withOpacity(0.50),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const Icon(
                        IconlyBold.location,
                        color: Color(0xffDE0A1E),
                        size: 40,
                      ),
                      title: const Text(
                        'Assiut University Hospital',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'assiut university hospital',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.45),
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                      indent: 55,
                      color: Colors.black.withOpacity(0.50),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const Icon(
                        IconlyBold.location,
                        color: Color(0xffDE0A1E),
                        size: 40,
                      ),
                      title: const Text(
                        'Assiut University Hospital',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'assiut university hospital',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.45),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: MaterialButton(
                    color: const Color(0xff0F172A),
                    height: 60,
                    elevation: 0,
                    minWidth: 215,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppoinmentDate()),
                      );
                    },
                    child: const Text(
                      'Pick a Date & Time',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
