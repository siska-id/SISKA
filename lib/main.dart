import 'package:flutter/material.dart';
import 'package:siskaproject/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(51, 157, 255, 1),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 300),
          height: 100,
          width: 0,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }
}
