
import 'package:flutter/material.dart';

class IsiLayanan extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(51, 157, 255, 1),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:40),
                  child: Text("Layanan siska",style:TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Image.asset("assets/images/ilustrasi2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text("Nikmati layanan dengan mudah dan cepat",style:TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Container(width: 500,height: 500,decoration: BoxDecoration( color:Colors.white,borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),)),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}