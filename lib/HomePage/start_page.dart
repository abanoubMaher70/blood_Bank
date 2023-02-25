import 'package:blood_bank/HomePage/home_page.dart';
import 'package:blood_bank/Profile/profile_page.dart';
import 'package:blood_bank/Request/requests_page.dart';
import 'package:blood_bank/get_data.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class IconButtomBar extends StatelessWidget {
  const IconButtomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      required this.selectedIcon})
      : super(key: key);

  final String text;
  final IconData icon, selectedIcon;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: selected
              ? Icon(
                  selectedIcon,
                  color: const Color(0xffDE0A1E),
                  size: 24,
                )
              : Icon(
                  icon,
                  size: 24,
                ),
        ),
        Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(
            fontSize: 11,
            height: 0.20,
            color: selected ? const Color(0xffDE0A1E) : Colors.black,
          ),
        )
      ],
    );
  }
}

class StartApp extends StatefulWidget {
  const StartApp({Key? key}) : super(key: key);

  static int selectedPage = 0;

  @override
  State<StartApp> createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  List<Widget> pages = [
    const Home(),
    const Data(),
    const Requests(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[StartApp.selectedPage],
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 57,
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButtomBar(
                    text: "Home",
                    icon: IconlyLight.home,
                    selectedIcon: IconlyBold.home,
                    selected: StartApp.selectedPage == 0,
                    onPressed: () {
                      setState(() {
                        StartApp.selectedPage = 0;
                      });
                    }),
                IconButtomBar(
                  text: "Awareness",
                  icon: IconlyLight.heart,
                  selectedIcon: IconlyBold.heart,
                  selected: StartApp.selectedPage == 1,
                  onPressed: () {
                    setState(() {
                      StartApp.selectedPage = 1;
                    });
                  },
                ),
                IconButtomBar(
                  text: "Requestes",
                  icon: IconlyLight.chat,
                  selectedIcon: IconlyBold.chat,
                  selected: StartApp.selectedPage == 2,
                  onPressed: () {
                    setState(() {
                      StartApp.selectedPage = 2;
                    });
                  },
                ),
                IconButtomBar(
                  text: "Profile",
                  icon: IconlyLight.profile,
                  selectedIcon: IconlyBold.profile,
                  selected: StartApp.selectedPage == 3,
                  onPressed: () {
                    setState(() {
                      StartApp.selectedPage = 3;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
