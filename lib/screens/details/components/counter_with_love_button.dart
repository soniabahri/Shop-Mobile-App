import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_counter.dart';
class CounterwithLoveButton extends StatelessWidget {
  const CounterwithLoveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8)
          ,height: 32,width: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFF6464)
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}