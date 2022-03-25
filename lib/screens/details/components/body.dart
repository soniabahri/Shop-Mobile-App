import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/product_title_with_image.dart';

import '../../../models/Product.dart';
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
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Text("color : \n",),
                              Row(
                                children: <Widget>[
                                  ColorDot(color: Colors.black,isSelected: true,),
                                  ColorDot(color: Colors.red),
                                  ColorDot(color: Colors.teal),],
                              )
                            ],
                          )
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