import 'package:flutter/material.dart';

class Absensi extends StatefulWidget {
  const Absensi({Key? key}) : super(key: key);

  @override
  State<Absensi> createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Absensi"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.login),
                        title: Text('Check-In'),
                        subtitle: Text('Tuesday, 10 May 2022\nChecked in at 07.35'),
                        trailing: Radio(value: 1,groupValue: null,onChanged: null,),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Check-Out'),
                        subtitle: Text('Tuesday, 10 May 2022\nChecked out at __.__'),
                        trailing: Radio(value: 1,groupValue: null,onChanged: null,),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
