import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
          // leading: const Text("WhatsApp",  style: TextStyle(
          //     fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, ),
          // ),
          // title: const Text("Home"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
          ],
          backgroundColor: Colors.black.withOpacity(0.9),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
          ),
          elevation: 1,
          // centerTitle: true,
        ),
        // body: (const
        // Text('text')
        // )
      ),
    );
  }
}
