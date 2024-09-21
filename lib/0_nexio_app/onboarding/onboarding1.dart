import 'package:first_flutter_app/0_nexio_app/onboarding/widgets/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/0_nexio_app/constant/colors.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "images/frame.png",
                  width: double.infinity, //full width
                  height: 450,
                  fit: BoxFit.cover, // Ensures it covers the full width
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 60),
                  child: Image.asset(
                    "images/card1.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85.0, top: 110),
                  child: Image.asset(
                    "images/card2.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 175.0, top: 180),
                  child: Image.asset(
                    "images/card3.png",
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 30.7, bottom: 50),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Ready to take",
                      style: TextStyle(
                        fontSize: 54.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "your money beyond",
                      style: TextStyle(
                          fontSize: 54.0,
                          color: primary,
                          fontWeight: FontWeight.w400,
                          height: 0.999),
                    ),
                    // const SizedBox(height: 0),
                    Row(
                      children: [
                        Text(
                          "borders",
                          style: TextStyle(
                              fontSize: 54.0,
                              color: primary,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "?",
                          style: TextStyle(
                            fontSize: 54.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    OnboardingButton(buttonColor: Colors.black, buttonTitle: "Get Started",),
                    SizedBox(height: 15.5),
                    Row(
                      // padding: EdgeInsets.only(top: 10.7),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I already have a Nexio account. ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                        Text("Sign me in",
                            style: TextStyle(
                                fontSize: 18,
                                color: primary,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
