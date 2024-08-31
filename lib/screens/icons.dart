import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: IconButton(
            icon: const Icon(
              // Icons.mic,
              FontAwesomeIcons.appleWhole
            ),
            onPressed: () {
              // Handle button press
            },
            splashColor: Colors.white,
            iconSize: 100,
            hoverColor: Colors.cyan,
            color: Colors.grey,
            highlightColor: Colors.brown,
          ),
        ),
      ),
    );
  }
}
