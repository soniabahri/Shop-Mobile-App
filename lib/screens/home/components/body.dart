import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/detail_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  get product => null;
  @override
  Widget build(BuildContext context) {
    var press;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefalutPaddin),
          child: Text(
            "Women & Men :",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefalutPaddin),
            child: GridView.builder(
              itemCount: Productions.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefalutPaddin,
                  crossAxisSpacing: kDefalutPaddin,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCard(

                  product: Productions[index], press: () => Future.delayed(Duration.zero, () { Navigator.push(context,MaterialPageRoute(builder: (context) => DetailScreen(product: Productions[index],),)
    );},))
    ),))],
    );
  }
}

