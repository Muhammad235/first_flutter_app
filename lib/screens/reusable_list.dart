import 'package:flutter/material.dart';

import '../widgets/listView.dart';

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
            children: const [
              ListViewWidget(leadingIcon: Icons.mouse,title: "Mouse", subTitle: "Price: 100", listTitleColor: Colors.black26,),
              ListViewWidget(leadingIcon: Icons.phone_android_rounded, title: "Phone", subTitle: "Price: 80", listTitleColor: Colors.green, trailingIcon: Icons.access_alarms,),
              ListViewWidget(title: "Laptop", subTitle: "Price: 10", listTitleColor: Colors.black26,),
              // ListViewWidget(),
            ],
          ),
        ));
  }

   // reusableList() {
   //  return Padding(
   //            padding: const EdgeInsets.all(10),
   //            child:
   //              ListTile(
   //                tileColor: Colors.black12,
   //                shape: ContinuousRectangleBorder(
   //                  borderRadius: BorderRadius.circular(10),
   //                  side: const BorderSide(
   //                    width: 1,
   //                    color: Colors.blue,
   //                  )
   //                ),
   //                leading:
   //                    IconButton(onPressed: () {}, icon: const Icon(Icons.mouse)),
   //                title: const Text(
   //                  "Mouse",
   //                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
   //                ),
   //                subtitle: const Text("A4Tech Mouse"),
   //                trailing: IconButton(
   //                  onPressed: () {},
   //                  icon: const Icon(Icons.add_shopping_cart),
   //                ),
   //                onTap: () {},
   //              ),
   //          );
   // }
}
