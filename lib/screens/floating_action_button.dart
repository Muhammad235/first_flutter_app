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
              "Floating action button",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: const BottomAppBar(
            notchMargin: 5.0,
            shape: CircularNotchedRectangle(),
            color: Colors.black87,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text("Home", style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      Text("Cart", style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite_outlined,
                        color: Colors.white,
                      ),
                      Text("Fav", style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      Text("Settings", style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: const Icon(Icons.add)
            // shape: BeveledRectangleBorder(
            //   borderRadius: BorderRadius.circular(20),
            //   side: const BorderSide(color: Colors.red, width: 2)
            // ),
            // mini: true,  //to make the action button small
          ),
        )
    );
  }
}

