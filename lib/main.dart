import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


import 'dart:async';
import 'package:first_flutter_app/0_nexio_app/onboarding/onboarding1.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/0_nexio_app/constant/colors.dart';

void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.purple // Apply color to the AppBar
//         ),
//       ),
//       home: const Home()
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//   @override
//   Widget build(BuildContext context)
//   {
//     final newWordPair = WordPair.random();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('MyApp'),
//       ),
//         body: const Center(child: Text ("First App"))
//     );
//   }
// }




class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    // hide top status bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return const MaterialApp(
        title: "Nexio App",
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Onboarding1())
        ));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nexio",
                  style: TextStyle(
                      fontSize: 65.0,
                      color: primary,
                      fontWeight: FontWeight.w500)),
              Text(
                "...your money beyond borders",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ));
  }
}


