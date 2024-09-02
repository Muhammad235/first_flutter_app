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
              "Rows and Column",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: const Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage('images/ss--.png'),
                      width: 150,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Image(
                        image: AssetImage('images/ss--.png'),
                        width: 150,
                      )),
                  Expanded(
                      child: Image(
                    image: AssetImage('images/ss--.png'),
                    width: 150,
                  ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(Icons.star_border),
                  Icon(Icons.star_border),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 35,
                      ),
                      Text("phone")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 35,
                      ),
                      Text("Alarm")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        size: 35,
                      ),
                      Text("Cart")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
