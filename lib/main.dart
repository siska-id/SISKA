import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body:  ListView(
          children:[
            Container(
              margin: EdgeInsets.symmetric(horizontal:25,vertical:25  ),
              height: 178,
              decoration:BoxDecoration(
                color: Color.fromARGB(255, 0, 133, 255),
                borderRadius: BorderRadius.circular(10)
              ),
             child:Stack(
               children:[
                Row(
                  children: [
                    //Image.asset("assets/images/logo.png"),
                  ],
                  ),
               ],
             ),
            ),
          ], 
          
        ),
        
       
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels:false,
          elevation: 0,
          items:[
          BottomNavigationBarItem (
            label: "",
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
              ),
            ),
           BottomNavigationBarItem (
            label: "",
            icon: Icon(
              Icons.assignment ,
              color: Colors.grey,
              ),
            ),
           BottomNavigationBarItem (
            label: "",
            icon: Icon(
              Icons.auto_stories_outlined ,
              color: Colors.grey,
              ),
            ),
           BottomNavigationBarItem (
            label: "",
            icon: Icon(
              Icons.person_outlined,
              color: Colors.grey,
              ),
            ),
       ],
      ),
    ),
    );
  }
}