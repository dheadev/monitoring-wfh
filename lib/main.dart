import 'package:flutter/material.dart';
import 'package:monitoring_wfh/daftar_cuti.dart';
import 'package:monitoring_wfh/home.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home(),
    DaftarCuti.tag: (context) => DaftarCuti(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monitoring_WFH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

