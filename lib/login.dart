import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api.dart';

class LoginPage extends StatelessWidget {
  String apiUrl = Api.url;
  String errorMsg = "";

  getApi(String email, String password) async{
    final res = await http.post(apiUrl, body: {"email" : email, "password" : password});
    final data = jsonDecode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(51, 157, 255, 1),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Masuk",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(51, 157, 255, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, right: 50, left: 50),
                  child: TextFormField(
                    controller: inptEmail,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintText: 'adminsiska@gmail.com',
                      labelText: 'Username/email',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    showCursor: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
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
