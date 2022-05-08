import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefalutPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[const Text("The product is : ",style: TextStyle(color: Colors.grey,fontSize: 20),),
          Text(utf8.decode(product.title.codeUnits), style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.grey,fontWeight: FontWeight.bold),),
          const SizedBox(height: kDefalutPaddin,)
          ,Row( children: <Widget> [RichText(text: TextSpan(
            children: [
              const TextSpan(text: "Price : \n",style: TextStyle(color:Colors.grey,fontSize: 24)),
              TextSpan(text: product.price,style: TextStyle(color:Colors.grey,fontSize: 16),)
            ],
          ),),
            const SizedBox(width: kDefalutPaddin,),
            Expanded(child:
            Hero(
              tag: product.id,
              child: product.image,
            ),)
            ,],)

        ],
      ),
    );
  }
}
