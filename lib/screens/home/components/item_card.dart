import 'dart:convert';

import 'package:flutter/material.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final dynamic product;
  final Function()? press;

  ItemCard({
    Key? key,
    required this.product, required this.press,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefalutPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                // color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
              tag: "${product.id}" ,
                child: product.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefalutPaddin / 4),
            child: Text(
              utf8.decode(product.title.codeUnits),
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "${product.price} Dt",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
