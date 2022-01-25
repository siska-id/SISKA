<<<<<<< HEAD
import 'package:dropdown_search/dropdown_search.dart';
=======
>>>>>>> benny/master
import 'package:flutter/material.dart';
import 'package:siskaproject/tautkan.dart';
import 'layanan.dart';
import 'tautkan.dart';
import 'login.dart';
import 'home.dart';
<<<<<<< HEAD
import 'profil.dart';

void main() => runApp(ProfilPage());
=======
import 'buatakun.dart';
void main() => runApp(BuatPage());
>>>>>>> benny/master

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
<<<<<<< HEAD
=======
       
>>>>>>> benny/master
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
