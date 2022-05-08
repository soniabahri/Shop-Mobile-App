import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import 'body.dart';

class ColorandSize extends StatelessWidget {
  const ColorandSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              const Text("color : \n",style: TextStyle(color: Colors.black),),
              Row(
                children: const <Widget>[
                  ColorDot(color: Colors.black,isSelected: true,),
                  ColorDot(color: Colors.red),
                  ColorDot(color: Colors.teal),],
              )
            ],
          ),
        ),
        Expanded(
            child:RichText(text: TextSpan (
                style: const TextStyle( color: kTextLightColor),
                children: [
                  const TextSpan( text: "Size :\n" , style: TextStyle(color: Colors.black)),
                  TextSpan(text: '${product.size}', style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),
                ]
            )))
      ],
    );
  }
}