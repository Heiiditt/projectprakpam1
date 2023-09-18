import 'kalkulator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.deepOrange,
  ),
  home: DataKelompok(),
));

class DataKelompok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anggota Kelompok"),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ListTile(
              leading: CircleAvatar(child:
              Text('S'),
                backgroundColor: Colors.deepPurpleAccent,
                foregroundColor: Colors.white,
              ),
              title: Text('Aditya Bahrin Shah Putra')
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp(),
                )
              );
            },
            child: Text(
              "Kalkulator",
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurpleAccent, // Background color
              onPrimary: Colors.white,
              shape: StadiumBorder(),
            )
          )
        ],
      ),
    );
  }
}