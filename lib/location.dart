import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Container(
        width: 1000,
        child: Image(image: AssetImage('images/maps.jpeg'),),

      ),
    );
  }
}


