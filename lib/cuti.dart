import 'package:flutter/material.dart';
import 'package:monitoring_wfh/daftar_cuti.dart';
import 'package:monitoring_wfh/home.dart';

class Cuti extends StatefulWidget {
  const Cuti({Key? key}) : super(key: key);

  @override
  State<Cuti> createState() => _CutiState();
}

class _CutiState extends State<Cuti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Cuti"),
        ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 12, top: 7),
                  child: Row(
                    children: [
                      Text('Ijin & Cuti', style: TextStyle(fontSize: 22),)
                    ],
                  )
                ),
                ListTile(
                  title: Text('Ijin'),
                  leading: Radio(value: 1, groupValue: null, onChanged: null),
                ),
                ListTile(
                  title: Text('Cuti Sakit'),
                  leading: Radio(value: 1, groupValue: null, onChanged: null),
                ),
                ListTile(
                  title: Text('Cuti Besar'),
                  leading: Radio(value: 1, groupValue: null, onChanged: null),
                ),
                ListTile(
                  title: Text('Cuti Menikah'),
                  leading: Radio(value: 1, groupValue: null, onChanged: null),
                ),
                ListTile(
                  title: Text('Cuti Melahirkan'),
                  leading: Radio(value: 1, groupValue: null, onChanged: null),
                ),
                ListTile(
                  title: Text('Cuti Tahunan'),
                  leading: Radio(value: 1, groupValue: null, onChanged: null),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, top: 7),
            child: Text('Mulai', style: TextStyle(fontSize: 20),),),
          Card(
            child: Row(
              children: <Widget>[
               Expanded(child: Container(
                 margin: EdgeInsets.only(left: 4, right: 7),
                 child: TextFormField(
                   decoration: InputDecoration(
                     hintText: 'Masukkan Tanggal',
                     border: OutlineInputBorder(),
                   ),
                 ),
               )),
                Container(
                  child: Text('-'),
                ),
                Expanded(child: Container(
                  margin: EdgeInsets.only(left: 5, right: 4),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Tanggal',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6, top: 5, bottom: 2),
            child: Text('Keterangan', style: TextStyle(fontSize: 20),),),
          Container(
            margin: EdgeInsets.only(left: 7, right: 7),
            child: TextFormField(
              maxLines: 8,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              child: Text('Ajukan Cuti'),
              onPressed: (){
                Navigator.of(context).pushNamed(Home.tag);
              },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue))
            ),
          )
        ],
      ),
    );
  }
}
