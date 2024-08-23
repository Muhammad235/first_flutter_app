import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('WordPair Generator'),
        ),
        body: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
