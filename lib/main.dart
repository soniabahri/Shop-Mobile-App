import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('welcome to your App'),
        ),
        body: const Center(),
      ),
    );
  }
}
