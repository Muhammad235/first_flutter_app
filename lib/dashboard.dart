import 'dart:math';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dashboard'.toUpperCase()),
            backgroundColor: Colors.amberAccent,
          ),
          body: Center(
            child: Text.rich(
              TextSpan(
                text: 'My',
                children: [
                  const TextSpan(
                      text: 'Flutter',
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.bold)),
                  const TextSpan(
                      text: 'App ',
                      style:
                          TextStyle(fontSize: 30.0, color: Colors.deepOrange)),
                  TextSpan(
                      text: "x${getNumber()}",
                      style:
                          const TextStyle(fontSize: 30.0, color: Colors.cyan)),
                  // Text(text: "Random Value is: "),
                ],
                // Text(text: "Random Value is: "),
              ),
            ),
          )),
    );
  }
}

int getNumber() {
  return Random().nextInt(10);
}
