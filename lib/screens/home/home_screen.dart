import 'dart:ui';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'package:shop_app/models/mongodb.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = ["Shoes", "Shirts", "Pants", "Others"];
  int selectedItem = 0;
  ConnectionSingleton conn = ConnectionSingleton.getInstance();

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: categories.length,
        child: Scaffold(
          appBar: buildAppBar(context),
          body: TabBarView(
            children: [
              Body(connection: conn, path: "shoes"),
               Body(connection: conn, path: "shirt"),
               Body(connection: conn, path: "pants"),
               Body(connection: conn, path: "others",),
            ],
          ),
        ));
  }
  Widget buildText(int index) {
    return Tab(
      child: Text(
                categories[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: KTextColor,
                ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text("Taskite" , style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),),
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.black,
        tabs: categories.mapIndexed((index, element) => buildText(index)).toList(),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search,color: Colors.black,),
          color: KTextColor,
        ),
        const SizedBox(
          width: kDefalutPaddin / 2,
        ),
      ],
    );
  }
}

