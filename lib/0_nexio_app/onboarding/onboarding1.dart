import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "images/frame.png",
                  width: double.infinity, //full width
                  height: 500,
                  fit: BoxFit.cover, // Ensures it covers the full width
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 100),
                  child: Image.asset(
                    "images/card1.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85.0, top: 150),
                  child: Image.asset(
                    "images/card2.png",
                    width: 300,
                    height: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 175.0, top: 220),
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ready to take",
                      style: TextStyle(
                        fontSize: 54.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      "your money beyond",
                      style: TextStyle(
                          fontSize: 54.0,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w400,
                          height: 0.999),
                    ),
                    // const SizedBox(height: 0),
                    const Row(
                      children: [
                        Text(
                          "borders",
                          style: TextStyle(
                              fontSize: 54.0,
                              color: Colors.deepPurple,
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
                    const SizedBox(height: 15),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text("Get Started"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        backgroundColor:
                            Colors.black, // Button background color
                        fixedSize: const Size(400, 75), // Button size
                        textStyle: const TextStyle(
                          fontSize: 25,
                          // fontWeight: FontWeight.bold,
                        ),
                        foregroundColor: Colors.white, // Text color
                        alignment: Alignment.center,
                      ),
                    ),
                    const SizedBox(height: 22.5),
                    const Row(
                      // padding: EdgeInsets.only(top: 10.7),
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I already have a Nexio account. ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                        Text("Sign me in",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500)),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
