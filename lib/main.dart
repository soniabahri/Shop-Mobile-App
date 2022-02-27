import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ShopApp());
  runApp(const MainPage());
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
              ElevatedButton(
                onPressed: onPressed,
                child: const Text("Start"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {
    // ignore: prefer_typing_uninitialized_variables
    var context2;
    Navigator.push(
      context2,
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(148, 118, 163, 99.9),
          title: const Text(
            "Cakeee",
            textAlign: TextAlign.center,
            
          ),
        ),
        body: const Text("Testing Timeee"),
      ),
    );
  }
}
