import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:monitoring_wfh/cuti.dart';
import 'package:monitoring_wfh/daftar_cuti.dart';
import 'package:monitoring_wfh/location.dart';
import 'package:monitoring_wfh/login_page.dart';
import 'package:monitoring_wfh/profile.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'absensi.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
  static String tag = 'home-page';
}

class _HomeState extends State<Home> {
  final _listImages= [
    'images/absensi.jpeg',
    'images/cuti.jpeg',
    'images/lokasi.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Attendance"),
        centerTitle: true,
      ),
      body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25),
              child: CarouselSlider(
                  options: CarouselOptions(autoPlay: true, aspectRatio: 50/17),
                  items: _listImages.map((listimage) {
                    return Builder(builder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Image.asset(listimage, fit: BoxFit.cover,), );
                    });
                  }).toList()),
            ),
            Container(
              child: GridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.all(28.0),
                crossAxisCount: 2,
                children: <Widget>[

                  Card(
                    margin: EdgeInsets.all(9.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile()
                            ));
                      },
                      splashColor: Colors.blueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.person, size: 70,color: Color(0xFF00E676),),
                            Text(" "),
                            Text("Profile", style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(9.0),
                    child: InkWell(
                      onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Absensi()
                          ));
                      },
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.calendar_month, size: 70,color: Color(0xFF00E676),),
                            Text(""),
                            Text("Absensi",style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(9.0),
                    child: InkWell(
                      onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>DaftarCuti()
                          ));
                      },
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.av_timer, size: 70, color: Color(0xFFD500F9),),
                            Text(" "),
                            Text("Cuti & Ijin",style: TextStyle(fontSize: 15))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(9.0),
                    child: InkWell(
                      onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Location()
                          ));
                      },
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.location_on_outlined, size: 70,color: Color(0XFFFF6E40),),
                            Text(""),
                            Text("Location",style: TextStyle(fontSize: 15))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF0288D1)
              ),
              child: Column(
                children: <Widget>[
                  Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      child: CircleAvatar(
                        radius: 50, backgroundColor: Colors.black,
                        backgroundImage: AssetImage("images/resume_images.png"),
                      )
                  ),
                  Text("Dhea Devita Oktaryana"),
                  Text("20190801135"),
                ],
              ),
            ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> Profile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Absensi"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> Absensi()));
              },
            ),
            ListTile(
              leading: Icon(Icons.av_timer),
              title: Text("Cuti & Ijin"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> DaftarCuti()));
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Location"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> Location()));
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log out"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> LoginPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
