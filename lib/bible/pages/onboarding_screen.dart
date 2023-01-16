import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:moor_flutter/moor_flutter.dart';
import 'package:pcn_erp/screens/homepage.dart';
import 'package:pcn_erp/util/onboard_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            OnboardPage(
              pageColor: Colors.white,
              pageText: 'Welcome To The PCN App',
              imagePath: 'assets/pcnLogo.png',
              pageSubTitle: 'The Esay Access to your PCN Materials and More',
            ),
            OnboardPage(
              pageColor: Colors.white,
              pageText: 'Events',
              imagePath: 'assets/Calendar-Transparent.png',
              pageSubTitle: 'Get the latest Events going on in the PCN Church',
            ),
            OnboardPage(
              pageColor: Colors.white,
              pageText: 'Convinience',
              imagePath: 'assets/8TEjrq7Ec.png',
              pageSubTitle:
                  'Get all your hymns, bible passages, histories, events etc. all just in one click',
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Colors.deepPurple,
                minimumSize: Size.fromHeight(80),
              ),
              onPressed: () async {
                //navigate directly to home page
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 24,
                ),
              ))
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                          spacing: 16,
                          dotColor: Colors.black26,
                          activeDotColor: Colors.deepPurple),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
