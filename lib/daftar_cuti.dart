import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monitoring_wfh/cuti.dart';

class DaftarCuti extends StatefulWidget {

  const DaftarCuti({Key? key}) : super(key: key);

  @override
  State<DaftarCuti> createState() => _DaftarCutiState();
  static String tag = "daftar-cuti";
}

class _DaftarCutiState extends State<DaftarCuti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuti'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          //card 1
          Container(
            margin: EdgeInsets.only(top: 5, left: 10, right: 10,bottom: 10),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text("Pengajuan"),
                    subtitle: Text('2 Mei 2022'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber
                          ),
                          margin: EdgeInsets.only(right: 20),
                          child: Text('Izin'),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, bottom: 5),
                    child: Row(
                    children: [
                      Text('Izin Perpanjang SIM')
                    ],
                  ),),
                  Container(
                    margin: EdgeInsets.only(left: 10, bottom: 20, right: 5),
                    child: Row(
                      children: [
                        Text('Mulai'),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('03 Juni 2022'),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70),
                            child: Text('Selesai')),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('03 Juni 2022'),
                        ),
                      ],
                    ),),
                  Container(
                    margin: EdgeInsets.only(left: 10, bottom: 25, top: 5),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber
                            ),
                            child: Text('Disetujui'))
                      ],
                    ),),
                ],
              )
            ),
          ),
          //card 2
          Container(
            margin: EdgeInsets.only(top: 5, left: 10, right: 10,bottom: 10),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.access_time),
                      title: Text("Pengajuan"),
                      subtitle: Text('10 Mei 2022'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.amber
                            ),
                            margin: EdgeInsets.only(right: 20),
                            child: Text('Izin'),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 5),
                      child: Row(
                        children: [
                          Text('Check Up Dokter')
                        ],
                      ),),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 20, right: 5),
                      child: Row(
                        children: [
                          Text('Mulai'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('11 Mei 2022'),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 70),
                              child: Text('Selesai')),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('11 Mei 2022'),
                          ),
                        ],
                      ),),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 25, top: 5),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.amber
                              ),
                              child: Text('Disetujui'))
                        ],
                      ),),
                  ],
                )
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cuti()));
        },
      ),
    );
  }
}
