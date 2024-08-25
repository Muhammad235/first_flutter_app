import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple // Apply color to the AppBar
        ),
      ),
      home: const Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context)
  {
    final newWordPair = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
        body: const Center(child: Text ("First App"))
    );
  }
}
