import 'dart:ui';

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
              "Reusable List",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              reusableList(),
              reusableList(),
              
            ],
          ),
        ));
  }

   reusableList() {
    return Padding(
              padding: const EdgeInsets.all(10),
              child:
                ListTile(
                  tileColor: Colors.black12,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      width: 1,
                      color: Colors.blue,
                    )
                  ),
                  leading:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.mouse)),
                  title: const Text(
                    "Mouse",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("A4Tech Mouse"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_shopping_cart),
                  ),
                  onTap: () {},
                ),
            );
   }
}
