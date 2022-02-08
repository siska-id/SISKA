import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  String apiLogin = Api.login;
  String errorMsg = "";

  getApi(String email, String password) async {
    final response = await http.post(Uri.parse(apiLogin),
        body: {"email": email, "password": password});
    final datares = jsonDecode(response.body);

    if (datares['status'] == 1) {
      print(datares['message']);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (c) => HomePage(email: datares['email'])));
      _email.clear();
      _password.clear();
      setState(() {
        errorMsg = datares['message'];
      });
    } else if (datares['status'] == 0) {
      setState(() {
        errorMsg = datares['message'];
      });
    }
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
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Text(
                    "Masuk",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(51, 157, 255, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: 5.0,
                // ),
                Center(
                  child: Text(errorMsg, style: TextStyle(color: Colors.red)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
                  child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintText: 'email@example.com',
                      labelText: 'Alamat Email',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    showCursor: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                  child: TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      hintText: '*********',
                      labelText: 'Kata Sandi',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    showCursor: true,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        getApi(_email.text, _password.text);
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                //   SizedBox(
                //     height: 10.0,
                //   ),
                //   Center(
                //   child: Text(errorMsg, style: TextStyle(color: Colors.red)),
                // ),
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
