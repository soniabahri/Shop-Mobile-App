import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back,color: Colors.black,),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search,color: Colors.black,),
          color: KTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart,color: Colors.black,),
          color: KTextColor,
        ),
        const SizedBox(
          width: kDefalutPaddin / 2,
        ),
      ],
    );
  }
}
