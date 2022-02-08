import 'package:flutter/material.dart';

//page layanan sebelum menautkan ke desa

class LayananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new Container(
          padding: new EdgeInsets.all(50.0),
          child: Column(
            children: [
              Text(
                "Tautkan dengan desa untuk menikmati lebih banyak layanan SISKA",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/images/ilustrasi1.png",
                    width: 300, height: 300, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Tautkan  untuk menikmati layanan:",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "- Layanan surat",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "- Info kontak penting",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "- Akses data kependudukan",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "- Administrasi",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Tautkan',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {
                    print('check');
                  },
                ),
              )
            ],
          ),
        ),
       
      ),
    );
  }
}
// TestEdit