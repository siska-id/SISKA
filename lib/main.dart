import 'package:flutter/material.dart';
import 'package:siskaproject/test.dart';

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
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 300),
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text(
                      "Masuk",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(51, 157, 255, 1),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 60, right: 50, left: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          hintText: 'adminsiska@gmail.com',
                          labelText: 'Username/email',
                          prefixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        showCursor: true,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, right: 50, left: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          hintText: '*********',
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        showCursor: true,
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            print("Login Berhasil");
                          },
                          child: Text(
                            "Masuk",
                            style: TextStyle(fontSize: 18),
                          )),
                    )
                  ],
                ),
              ),
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
