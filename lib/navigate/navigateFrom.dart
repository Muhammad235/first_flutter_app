import 'package:flutter/material.dart';
import 'navigateTo.dart';

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
              "Flutter navigate",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: const _ProductForm(),
        )
    );
  }
}

class _ProductForm extends StatefulWidget {
  const _ProductForm({super.key});

  @override
  State<_ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<_ProductForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        child: const Text("Submit", style:  TextStyle(fontWeight: FontWeight.bold),),
        onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const WelcomeScreen();
            })
            );
        },
      ),
    );
  }
}

