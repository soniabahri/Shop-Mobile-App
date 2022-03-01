import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

import 'categories.dart';

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
            "Women",
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
              itemBuilder: (context, index) {
                return ItemCard(
                  product: Productions[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  //final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(kDefalutPaddin),
          // height: 180,
          // width: 160,
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(product.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefalutPaddin / 4),
          child: Text(
            product.title,
            style: const TextStyle(color: kTextLightColor),
          ),
        ),
        const Text(
          "\$234",
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
