import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Shoes", "Jeans", "Parfum", "Dresses"];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefalutPaddin),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefalutPaddin),
        child: SizedBox(
          height: 25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildText(index)),
        ),
      ),
    );
  }

  Widget buildText(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefalutPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: KTextColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: kDefalutPaddin / 4),
              height: 2,
              width: 30,
              color: selectedItem == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
