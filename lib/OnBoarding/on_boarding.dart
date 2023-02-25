import 'package:blood_bank/Componants/buttons.dart';
import 'package:blood_bank/Componants/skip_button.dart';
import 'package:blood_bank/OnBoarding/on_boarding_page.dart';
import 'package:blood_bank/login/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  static final PageController controller = PageController();
  bool _isend = false;
  int pageNum = 0;

  begin(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: (Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  _isend = (index == 2);
                });
              },
              controller: controller,
              children: const [
                OnBPage(
                  image: "assets/BloodDonation-cuate.svg",
                  title: "Find donators",
                  subtitle:
                      "Dramatically unleash cutting-edge\nvortals before maintainable platforms.",
                ),
                OnBPage(
                    image: "assets/BloodDonation.svg",
                    title: "Easy to Save People,\nare you ready?",
                    subtitle:
                        "Your blood is precious : Donate,\nsave a life & make it divine."),
                OnBPage(
                  image: "assets/BloodDonation-amico.svg",
                  title: "Find donators",
                  subtitle:
                      "Dramatically unleash cutting-edge\nvortals before maintainable platforms.",
                ),
              ],
            ),
            const SkipButton(),
            Container(
              alignment: const Alignment(0, 0.65),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: Color(0xffDE0A1E),
                    dotColor: Color(0xffC0C0C0)),
              ),
            ),
            Container(
              alignment: const Alignment(0, 0.9),
              child: _isend
                  ? ActionButton(
                      text: "let's Begin",
                      isBold: true,
                      onTap: () {
                        setState(() {
                          begin(context);
                        });
                      },
                      width: 240,
                    )
                  : ActionButton(
                      text: "Next",
                      onTap: () {
                        pageNum++;
                        controller.animateToPage(
                          pageNum,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
            )
          ],
        )),
      ),
    );
  }
}
