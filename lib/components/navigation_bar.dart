import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';


class NavigationDrawer extends StatefulWidget {

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  dscWebLauncher() async{
    if(await canLaunch('dscunilag.dev/join')){
      await launch('dscunilag.dev/join');
    }else{
      throw 'Could not launch dscunilag.dev/join';
    }
  }

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
            leading: SvgPicture.asset('images/Home-Filled.svg'),
            title: Text('Home'),
           onTap: (){
              Navigator.pushNamed(context, '/');
            }
          ),
          ListTile(
            leading: SvgPicture.asset('images/Events.svg'),
            title: Text('Events'),
            onTap: (){
              Navigator.pushNamed(context, '/events');
            }
          ),
          ListTile(
            leading: SvgPicture.asset('images/Core Team.svg'),
            title: Text('Core Team'),
            onTap: (){
              Navigator.pushNamed(context, '/core team');
            }
          ),
          ListTile(
            title: Text('DSC Unilag Blog'),
            onTap: () => dscWebLauncher(),
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