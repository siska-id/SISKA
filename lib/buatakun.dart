import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class BuatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(51, 157, 255, 1),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration:BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        "Buat Akun",
                        style: TextStyle(fontSize: 28, color: Colors.blue),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 10, right: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25))),
                                      hintText: 'Nama Lengkap',
                                      labelText: 'Nama Lengkap',
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                    keyboardType: TextInputType.text,
                                    showCursor: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 10, right: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25))),
                                      hintText: 'Username',
                                      labelText: 'username',
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                    keyboardType: TextInputType.text,
                                    showCursor: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 10, right: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                        hintText: 'Email',
                                        labelText: 'Email',
                                        prefixIcon: Icon(Icons.home)),
                                    showCursor: true,
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, left: 10, right: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25))),
                                      hintText: '*********',
                                      labelText: 'Password',
                                      prefixIcon: Icon(Icons.person),
                                    ),
                                    keyboardType: TextInputType.text,
                                    showCursor: true,
                                    obscureText: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                      onPressed: () {
                                        print("Login Berhasil");
                                      },
                                      child: Text(
                                        "Buat Akun",
                                        style: TextStyle(fontSize: 18),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
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
// TestEdit