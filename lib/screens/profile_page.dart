import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              backgroundColor: Colors.deepPurpleAccent.withOpacity(0.8),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {},
                color: Colors.white,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.white,
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ],
              // centerTitle: true,
            ),
            body: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Stack(
                    children: [
                      Container(
                        // m
                        width: double.infinity,
                        height: 150,
                        color: Colors.deepPurpleAccent.withOpacity(0.8),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50.0),
                        child: Row(
                            // child: Container(),
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(image: AssetImage('images/avatar.png')),
                              Container(
                                width: 200,
                                height: 200,
                                // shape: Border.,
                                margin: const EdgeInsets.only(top: 10.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 20),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('images/avatar.png')
                                    )
                                ),

                              )
                            ]),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Julianna Carter",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 25,
                            color: Colors.grey,
                          ),
                          Text(
                            "   Banglore, India",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),


                      Column(
                        children: [
                            const Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: Text(
                              "Web   |   Graphics  |   UI/UX",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                          ),
                          ),


                          const SizedBox(
                            width: 200,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  // IconButton(
                                  //     onPressed: (){}, icon: Icon(Icons.facebook)
                                  // )
                                  Icon(
                                    FontAwesomeIcons.facebookF,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.twitter,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.linkedinIn,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 100),
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Followers",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "453k",
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Views",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text("453k",
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey,
                                              ))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Reviews",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text("453k",
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey,
                                              )),
                                        ],
                                      ),
                                    ])
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            // child: IconButton(onPressed: (){}, icon: Icon(Icons.opacity)),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text("Follow"),
                              style: ElevatedButton.styleFrom(
                                // padding: const EdgeInsets.symmetric(vertical: 20),
                                backgroundColor: Colors
                                    .deepPurpleAccent, // Button background color
                                fixedSize: const Size(290, 70), // Button size
                                textStyle: const TextStyle(
                                  fontSize: 25,
                                  // fontWeight: FontWeight.bold,
                                ),
                                foregroundColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ])));
  }
}
