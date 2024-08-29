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
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.cyan, // Button background color
              fixedSize: const Size(300, 80), // Button size
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              foregroundColor: Colors.yellow, // Text color
              elevation: 35,
              shadowColor: Colors.black26,
              side: const BorderSide(color: Colors.brown, width: 2),
              alignment: Alignment.center,
              // shape: const CircleBorder(),
            ),
            child: const Text('Get started'),
          ),
        ),
      ),
    );
  }
}
