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
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.9),
            title: const Text(
              "Stack & Position",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body:  Center(
            child: Stack(
              // alignment: Alignment.center,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 300,
                  height: 200,
                  color: Colors.green,
                ),

                Positioned(
                  top: 0,
                  child:
                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  // padding: const EdgeInsets.symmetric(vertical: 100),
                  margin: const EdgeInsets.only(bottom: 60.0),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        )
    );
  }
}

