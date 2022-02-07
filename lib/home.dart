import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String email;

  HomePage({required this.email});


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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.account_box_outlined,
                            size: 35, color: Colors.blue),
                        Text(
                          "XX",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
                  ),
                  //2
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.assignment_outlined,
                            size: 35, color: Colors.blue),
                        Text(
                          "XX",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
                  ),
                  //3
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.assessment_outlined,
                            size: 35, color: Colors.blue),
                        Text(
                          "XX",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
                  ),
                  //4
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.contact_phone_outlined,
                            size: 35, color: Colors.blue),
                        Text(
                          "Kontak ",
                          style: TextStyle(fontSize: 7, color: Colors.blue),
                        ),
                        Text(
                          "Penting",
                          style: TextStyle(fontSize: 7, color: Colors.blue),
                        ),
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.card_travel, size: 35, color: Colors.blue),
                        Text(
                          "XX",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
                  ),
                  //6
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.assignment_outlined,
                            size: 35, color: Colors.blue),
                        Text(
                          "XX",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
                  ),
                  //7
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.desktop_windows_rounded,
                            size: 35, color: Colors.blue),
                        Text(
                          "XX",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
                  ),
                  //8
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(7.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.white),
                    child: Column(
                      children: [
                        Icon(Icons.assignment_outlined,
                            size: 35, color: Colors.blue),
                        Text(
                          "XX",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        )
                      ],
                    ),
                    onPressed: () {
                      print('check');
                    },
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