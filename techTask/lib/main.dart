import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List colors = [Colors.red, Colors.blue, Colors.pink, Colors.green, Colors.yellow];
  Random random = new Random();
  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () => changeIndex(),
        child: Text('Hi there!'),
        color: colors[index],
      ),
    );
  }
}