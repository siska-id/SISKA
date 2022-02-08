import 'package:flutter/material.dart';
import 'package:siskaproject/profil.dart';
import 'package:siskaproject/tautkan.dart';
import 'layanan.dart';
import 'tautkan.dart';
import 'login.dart';
import 'home.dart';
import 'buatakun.dart';
import 'surat.dart';
import 'konfirmasi.dart';
import 'IsiLayanan.dart';

void main() => runApp(MyBottomBarDemo());


class MyBottomBarDemo extends StatefulWidget {
  @override
  _MyBottomBarDemoState createState() => new _MyBottomBarDemoState();
}

class _MyBottomBarDemoState extends State<MyBottomBarDemo> {
  int _pageIndex = 0;
  late PageController _pageController;

  List<Widget> tabPages = [
    HomePage(),
    LayananPage(),
    TautkanPage(),
    ProfilPage()
  ];

  @override
  void initState(){
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
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
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    ),
    );
  }
  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 50),curve: Curves.easeInOut);
  }
}