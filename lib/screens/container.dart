import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        width: 350.0,
        height: 350.0,
        padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 50),
        margin: const EdgeInsets.all(60.0),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Colors.cyan,
          // borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey, width: 6),
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
                color: Colors.black45,
                blurRadius: 7,
                spreadRadius: 5,
                offset: Offset(4, 4))
          ],
          image: const DecorationImage(image: AssetImage('images/ss--.png')),
        ),
        child: const Text(
          "APP",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.yellow),
        ),
      )),
    );
  }
}
