import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

import '../../../models/Product.dart';
import 'ColorandSize.dart';
import 'cart_counter.dart';
import 'description.dart';
class Body extends StatelessWidget {
  final Product product ;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column (
        children : <Widget>[
          SizedBox(height: size.height,
          child: Stack (
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height*0.45),
                padding: EdgeInsets.only(top: size.height*0.12,
                left: kDefalutPaddin,right: kDefalutPaddin),
                height: 500,
                  decoration: const BoxDecoration(color: Colors.grey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),),),
                  child: Column (
                    children: <Widget>[
                      ColorandSize(product: product),
                      description(product: product),
                      Row(
                        children: [
                          CartCounter(),
                          Container(height: 32,width: 32,decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.5),
                            color: Color(0xFFFF6464)
                          ),)
                        ],
                      )
                    ],
                  ),
              ),
              ProductTitleWithImage(product: product)
            ],
          ),)
        ]
    ),
    );
  }
}
class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected ;
  const ColorDot({
    Key? key, required this.color, this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefalutPaddin /4 ,
      right: kDefalutPaddin/2),
      padding: const EdgeInsets.all(1),
      height: 24,width: 24,
      decoration: BoxDecoration(
      shape: BoxShape.circle,
        border: Border.all(color : isSelected? color: Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color,
        shape: BoxShape.circle),

      ),
    );
  }
}
