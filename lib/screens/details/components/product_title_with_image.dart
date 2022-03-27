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
          Text(product.title, style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.grey,fontWeight: FontWeight.bold),),
          SizedBox(height: kDefalutPaddin,)
          ,Row( children: <Widget> [RichText(text: TextSpan(
            children: [
              const TextSpan(text: "Price : \n",style: TextStyle(color:Colors.grey,fontSize: 24)),
              TextSpan(text: "\$${product.price}",style: const TextStyle(color:Colors.grey,fontSize: 26),)
            ],
          ),),
            SizedBox(width: kDefalutPaddin,),
            Expanded(child:
            Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,),
            ),)
            ,],)

        ],
      ),
    );
  }
}
