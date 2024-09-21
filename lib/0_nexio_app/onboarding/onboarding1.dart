import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Flutter App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(child: Text("Onboarding page")),
        )
    );
  }
}


