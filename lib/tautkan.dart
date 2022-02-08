import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class TautkanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                    "Tautkan Ke Desa",
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
                                  border: OutlineInputBorder(),
                                  hintText: '3301234567890003',
                                  labelText: 'NIK',
                                  prefixIcon: Icon(Icons.person),
                                ),
                                keyboardType: TextInputType.number,
                                showCursor: true,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 10, right: 10),
                              child: DropdownSearch<String>(
                                mode: Mode.MENU,
                                showSelectedItems: true,
                                items: ["Brazil", "Tunisia", 'Canada'],
                                // ignore: deprecated_member_use
                                label: "Pilih desa",
                                // ignore: deprecated_member_use
                                hint: "Pilih Desa Tempat tinggal",
                                onChanged: print,

                                showClearButton: true,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 10, right: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Masukan Nomor kartu keluarga',
                                    labelText: 'No KK',
                                    prefixIcon: Icon(Icons.home)),
                                showCursor: true,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
// TestEdit