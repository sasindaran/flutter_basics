import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String s = "Hello world";

  void clickme() {
    setState(() {
      s = "HI!!! Friends";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Text(s),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: clickme,
          )
        ],
      ),
    );
  }
}
