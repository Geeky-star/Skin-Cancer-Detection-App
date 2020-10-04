import 'package:flutter/material.dart';
import 'package:medicalapp/disease.dart';
import 'package:medicalapp/about.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawer createState() => _NavDrawer();
}

class _NavDrawer extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              "W",
              style: TextStyle(fontSize: 0),
            ),
            decoration: BoxDecoration(
                color: Colors.blue[200],
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/image.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('About App'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()))
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text("Disease"),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Disease()))
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
