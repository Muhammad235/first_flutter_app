import 'package:first_flutter_app/0_nexio_app/onboarding/widgets/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/0_nexio_app/constant/colors.dart';

import '../auth/signup.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
            Image.asset(
              "images/frame2.png",
              width: double.infinity, // full width
              height: 580,
              fit: BoxFit.cover, // Ensures it covers the full width
            ),
            Container(
              padding: const EdgeInsets.only(left: 30.7, bottom: 50),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "Security you can trust",
                      style: TextStyle(
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10.0, top:30.0, right:10.0, bottom: 10),
                    child: Text(
                      "Safeguard your cross-border payments with multi-factor authentication and fraud detection.",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        height: 1.2, // Adjust line height
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  OnboardingButton(page: SignupScreen(),), // Ensure OnboardingButton is imported and correct
                  SizedBox(height: 15.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "I already have a Nexio account. ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Sign me in",
                        style: TextStyle(
                          fontSize: 18,
                          color: primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
