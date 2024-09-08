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
              "Stateful Widget",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: const LearnStateful(),
        )
    );
  }
}

class LearnStateful extends StatefulWidget {
  const LearnStateful({super.key});

  @override
  State<LearnStateful> createState() => _LearnStatefulState();
}

class _LearnStatefulState extends State<LearnStateful> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
    
    child: ListView(
      children: [
        ListTile(
          tileColor: Colors.green.withOpacity(0.999),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                width: 1,
                color: Colors.blue,
              )
          ),
          title: const Text("Nike Shoes"),
          trailing: IconButton(
              onPressed: (){
                setState(() => liked = !liked);
              },
              icon: liked ? const Icon(Icons.favorite_outline) : const Icon(Icons.favorite),
          ),
        )
      ],
    )
    );
  }
}

