import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/detail_screen.dart';
import '../../../models/mongodb.dart';
import 'item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key, this.connection, required this.path}) : super(key: key);
  final ConnectionSingleton? connection;
  final String path;

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List<Product>? products;

  @override
  void initState() {
    super.initState();
    widget.connection?.get(widget.path).then((value) {
      if(mounted){
        setState(() {
          products = value;
        });
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    var press;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefalutPaddin),
              child: (products != null && products!.isNotEmpty)? GridView.builder(
                  itemCount: (products != null)? products!.length: 0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefalutPaddin,
                      crossAxisSpacing: kDefalutPaddin,
                      childAspectRatio: 0.75),
                  itemBuilder: (context, index) => ItemCard(

                      product: products![index], press: () => Navigator.push(context,MaterialPageRoute(builder: (context) => DetailScreen(product: products![index],),)
                  ))
              ): Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  )
                ],
              ),)
        )
      ],
    );
  }
}

