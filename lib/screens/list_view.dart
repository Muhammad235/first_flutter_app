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
              "List View",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: ListView(
            itemExtent: 100.0,
            // reverse: true,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.account_circle_outlined),
                ),
                title: const Text("Profile"),
                subtitle: const Text("profile page"),
                trailing:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add), color: Colors.green),
                onTap: () {},
                tileColor: Colors.black26,
              ),
              ListTile(
                leading:
                  const Icon(Icons.account_circle_outlined),
                title: const Text("Profile"),
                subtitle: const Text("profile page"),
                trailing:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                // onTap: () {},
                // tileColor: Colors.black,
              )
            ],
          ),
        ));
  }
}
