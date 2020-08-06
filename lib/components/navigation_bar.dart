import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.all(2.0),
        children: <Widget>[
          Center(
            child: Container(
              height: 60,
                child: Image.asset('images/dsc_logo2.jpg')),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Events'),
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Core Team'),
          ),
          ListTile(
            title: Text('DSC Unilag Blog'),
          ),
          ListTile(
            title: Text('Image Gallery'),
          ),
          ListTile(
            title: Text('OHW Team 2'),
          ),
        ],
      ),
    );
  }
}