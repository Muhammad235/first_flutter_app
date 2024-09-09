import 'package:flutter/material.dart';
import 'product_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _productController = TextEditingController();

  late String _productName;

  // void _updateText(val){
  //   setState((){
  //     _productName = val;
  //   });
  // }

  void iniState() {
    super.initState();
    _productController.addListener(_updateText);
  }
  void _updateText(){
    setState((){
      _productName = _productController.text;
    });
  }

  bool? checkBox = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.9),
            title: const Text(
              "Add Product",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children:  [
                // const TextField(
                //   decoration: InputDecoration(
                //     hintText: "Product Name",
                //     icon: Icon(Icons.verified_user_outlined),
                //   ),
                // ),

                TextFormField(
                  // onChanged: (val){
                  //   _updateText(val);
                  // },
                  // controller: _productController,
                  decoration: const InputDecoration(
                    labelText: "Product Name",
                    // icon: Icon(Icons.verified_user_outlined),
                    prefixIcon: Icon(Icons.verified_user_outlined),
                    prefixIconColor: Colors.green,
                    border: OutlineInputBorder(),
                  ),
                ),
               //using the onchange method
               // Text("Product name is $_productName"),

                //using the controller method
                Text("Product name is ${_productController.text}"),

                Checkbox(value: checkBox, onChanged: (val){
                  setState(() => checkBox = val);
                }),

                CheckboxListTile(value: checkBox, onChanged: (val){
                  setState(() => checkBox = val);
                },
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text("Top product"),
                ),


                const SizedBox(height: 30,),

                addProductBtn(context),
              ],
            ),
          ),

        )
    );
  }


  OutlinedButton addProductBtn(BuildContext context){
    return OutlinedButton(
      child: const Text("Submit", style:  TextStyle(fontWeight: FontWeight.bold),),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          // return const ProductList(productName: 'laptop',);
          return const ProductList();
        })

        );
      },
    );
  }
}


