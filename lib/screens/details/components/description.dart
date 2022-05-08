import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import '../../../models/Product.dart';

class description extends StatelessWidget {
  const description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefalutPaddin),
      child: Text(utf8.decode(product.description.codeUnits),style: const TextStyle(height: 1.5),),
    );
  }
}
