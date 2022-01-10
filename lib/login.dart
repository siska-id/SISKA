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
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 400),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
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
