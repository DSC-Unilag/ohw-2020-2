import 'package:DSCUnilagApp/components/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:DSCUnilagApp/components/navigation_bar.dart';


class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigation(),
        drawer: NavigationDrawer(),
        appBar:  AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Image.asset('images/dsc_logo2.jpg',
              height: 40,
              width: 40,),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('images/Search.svg',
                color: Colors.black,),
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SvgPicture.asset('images/Top Image.svg'),
                      Container(
                        height: 60,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Image.asset('images/Top-Image.jpg'),
                            Image.asset('images/Top-Image.jpg'),
                            Image.asset('images/Top-Image.jpg'),
                            Image.asset('images/Top-Image.jpg'),
                            Image.asset('images/Top-Image.jpg'),
                            Image.asset('images/Top-Image.jpg'),
                            Image.asset('images/Top-Image.jpg'),
                            Image.asset('images/Top-Image.jpg'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Color(0xFFCFE0FC),
                  child: FlatButton(
                    onPressed: null,
                    child: Center(
                      child: Text('View Gallery'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('About DSC',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
