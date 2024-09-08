import 'package:flutter/material.dart';



// reusableList() {
//   return const ListViewWidget();
// }

class ListViewWidget extends StatelessWidget {

  final String title;
  final String subTitle;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Color? listTitleColor;

  const ListViewWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add_shopping_cart,
    this.listTitleColor,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child:
      ListTile(
        tileColor: listTitleColor,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              width: 1,
              color: Colors.blue,
            )
        ),
        leading:
        IconButton(onPressed: () {}, icon: Icon(leadingIcon)),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subTitle),
        trailing: IconButton(
          onPressed: () {},
          icon:  Icon(trailingIcon),
        ),
        onTap: () {},
      ),
    );
  }
}