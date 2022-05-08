import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/body.dart';

import '../../models/Product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: product.color,
      appBar: buildAppBar(context),
      body:Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      // backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.black,),onPressed: () => Navigator.pop(context),),
      actions: <Widget> [IconButton(icon : const Icon(Icons.search,color: Colors.black,),
      onPressed: () {} ),
        IconButton(icon : const Icon(Icons.shopping_cart,color: Colors.black,),
          onPressed: () {} ,),
      const SizedBox( width: kDefalutPaddin / 2 )
      ],

    );
  }
}
