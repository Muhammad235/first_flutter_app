import 'package:flutter/material.dart';

void main() => runApp(const WelcomeScreen());

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.9),
            leading:
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back), color: Colors.white,)
            ,
            title: const Text(
              "Welcome",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: const Center( child: Text("Hello, welcome"), ),
        )
    );
  }
}

