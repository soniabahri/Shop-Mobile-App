import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyBody();
  }

  // ignore: non_constant_identifier_names
  MaterialApp MyBody() {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color.fromRGBO(230, 230, 230, 99.9),
          child: Column(
            children: [
              const Text(
                'Welcome to your Shopping App',
                textAlign: TextAlign.center,
              ),
              Image.asset("assets/images/shopping-online.png"),
            ],
          ),
        ),
      ),
    );
  }
}
