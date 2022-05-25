import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: CircleAvatar(
                    radius: 50, backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/resume_images.png"),
                  ),),
              ],
            ),),
          Card(
            child: ListTile(
              title: Text('Nama'),
              subtitle: Text('Dhea Devita Oktaryana'),
              trailing: Icon(Icons.mode_edit),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Tempat, Tanggal Lahir'),
              subtitle: Text('Jambi, 8 Oktober 2001'),
              trailing: Icon(Icons.mode_edit),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ID Pegawai'),
              subtitle: Text('6708'),
              trailing: Icon(Icons.mode_edit),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Jabatan'),
              subtitle: Text('Administrasi Keuangan'),
              trailing: Icon(Icons.mode_edit),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('No Telepon'),
              subtitle: Text('087893985753'),
              trailing: Icon(Icons.mode_edit),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Email'),
              subtitle: Text('dheaname08@gmail.com'),
              trailing: Icon(Icons.mode_edit),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Password'),
              subtitle: Text('********'),
              trailing: Icon(Icons.mode_edit),
            ),
          ),
        ],
      ),
    );
  }
}
