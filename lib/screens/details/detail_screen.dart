import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/body.dart';

import '../../models/Product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body:Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.black,),onPressed: () => Navigator.pop(context),),
      actions: <Widget> [IconButton(icon : SvgPicture.asset('assets/icons/search.svg',color: Colors.black,),
      onPressed: () {} ),
        IconButton(icon : SvgPicture.asset('assets/icons/cart.svg',color: Colors.black,),
          onPressed: () {} ,),
      SizedBox( width: kDefalutPaddin / 2 )
      ],

    );
  }
}
