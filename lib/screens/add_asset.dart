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
            appBar: AppBar(
              title: Text('Welcome'.toUpperCase()),
              backgroundColor: Colors.amberAccent.shade100,
            ),
            body: const Center(
              child: Image(image: AssetImage('images/ss.png'),
              )
            )
        )
    );
  }
}
