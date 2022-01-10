import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              height: 178,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 157, 255, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset("assets/images/logo3.png",
                              width: 200, height: 200, fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "SELAMAT DATANG DI APLIKASI SISKA",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //1
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.account_box_outlined,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("Profil",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  //2
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.assignment_outlined,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("text",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  //3
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.assessment_outlined,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("text",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  //4
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.contact_phone_outlined,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("text",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //5
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.card_travel,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("text",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  //6
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.view_compact_rounded,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("text",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  //7
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.desktop_windows_rounded,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("text",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  //8
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 4),
                        child: Column(
                          children: [
                            Icon(Icons.assignment_outlined,
                                size: 33,
                                color: Color.fromRGBO(51, 157, 255, 1)),
                            Text("text",
                                style: TextStyle(
                                    color: Color.fromRGBO(51, 157, 255, 1))),
                          ],
                        ),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Text(
                  "Berita hari ini",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color.fromRGBO(51, 157, 255, 1),
          elevation: 20,
          iconSize: 25,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "Layanan",
              icon: Icon(
                Icons.assignment_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "Berita",
              icon: Icon(
                Icons.auto_stories_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profil",
              icon: Icon(
                Icons.person_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// TestEdit