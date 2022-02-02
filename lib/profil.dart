import 'dart:ui';

import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(51, 157, 255, 1),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
                child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                  radius: 70.0,
                )
              ],
            )),
          )),
    );
  }
}
