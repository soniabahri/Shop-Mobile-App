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
      padding: EdgeInsets.symmetric(vertical: kDefalutPaddin),
      child: Text(product.description,style: TextStyle(height: 1.5),),
    );
  }
}
