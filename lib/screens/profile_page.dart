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
            body: Container(
              child: const Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image(image: AssetImage('images/avatar.png')),
                    ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            "Julianna Carter",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 25,
                              color: Colors.grey,
                            ),
                            Text(
                              "Banglore, India",
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
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Text(
                                "Web | Graphics | UI/UX",
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),

                            // child: Container(),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  // IconButton(
                                  //     onPressed: (){}, icon: Icon(Icons.facebook)
                                  // )
                                  Icon(
                                    Icons.facebook,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.linked_camera,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.accessibility,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),

                            Padding(
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
                                                ))
                                          ],
                                        ),
                                      ])
                                ],
                              ),
                            ),

                            // Padding(padding: EdgeInsets.symmetric(vertical: 100.0),
                            //   child: ElevatedButton.icon(
                            //     onPressed: () {}, label: null,
                            //         style: ElevatedButton.styleFrom(
                            //           // padding: const EdgeInsets.symmetric(vertical: 20),
                            //           backgroundColor:
                            //               Colors.deepPurpleAccent, // Button background color
                            //           fixedSize: const Size(300, 70), // Button size
                            //           textStyle: const TextStyle(
                            //             fontSize: 25,
                            //             // fontWeight: FontWeight.bold,
                            //           ),
                            //   ),
                            // ),

                            // Padding(
                            //   padding: EdgeInsets.symmetric(vertical: 100.0),
                            //   child: ElevatedButton.icon(
                            //     onPressed: () {},
                            //     label:  Text("Follow"),
                            //     style: ElevatedButton.styleFrom(
                            //       // padding: const EdgeInsets.symmetric(vertical: 20),
                            //       backgroundColor:
                            //           Colors.deepPurpleAccent, // Button background color
                            //       fixedSize: const Size(300, 70), // Button size
                            //       textStyle: const TextStyle(
                            //         fontSize: 25,
                            //         // fontWeight: FontWeight.bold,
                            //       ),
                            //       foregroundColor: Colors.white, // Text color
                            //       elevation: 10,
                            //       // shadowColor: Colors.black26,
                            //       // side: const BorderSide(color: Colors.brown, width: 2),
                            //       alignment: Alignment.center,
                            //     ),
                            //   ),
                            // )
                            // style: TextStyle(fontSize: 40),
                          ],
                        )
                      ],
                    ),
                  ]),
            )));
  }
}
