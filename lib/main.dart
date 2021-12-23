

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
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                    child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset("assets/images/logo3.png",width:200,height:200,fit: BoxFit.cover),
                 ),
                 ),
                    Expanded(
                    child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:  Text("SELAMAT DATANG DI APLIKASI SISKA",style: TextStyle(fontSize: 17,color: Colors. white,fontWeight: FontWeight.bold),),
                 ),
                 ),
                  ],
                  ),
               ],
             ),
            
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:35,vertical:10 ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   width: 60,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                  
                 ),
                  Container(
                   width: 60,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                 ),
                  Container(
                   width: 60,
                   height: 60,
                    decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                 ),
                  Container(
                   width: 60,
                   height: 60,
                    decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                 ),
               ],
             ),
             
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:35,vertical:25 ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   width: 60,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                  
                 ),
                  Container(
                   width: 60,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                 ),
                  Container(
                   width: 60,
                   height: 60,
                    decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                 ),
                  Container(
                   width: 60,
                   height: 60,
                    decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(10),
                     boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                         spreadRadius: 2,
                         blurRadius: 3,
                         offset: Offset(0, 5), // changes position of shadow
                      ),
                    ],
                   ),
                 ),
               ],
             ),
             
           ),
          ], 
        ),
      
        
       
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: TextStyle(
            color: Colors.grey, fontFamily: 'Montserrat', fontSize: 12.0),
          showUnselectedLabels: true,
          elevation: 0,
          iconSize: 25,
          
          items:[
          BottomNavigationBarItem (
            label: "Home",
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
// TestEdit