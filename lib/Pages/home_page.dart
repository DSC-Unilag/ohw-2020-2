import 'package:DSCUnilagApp/components/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:DSCUnilagApp/components/navigation_bar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigation(),
          drawer: NavigationDrawer(),
          appBar: AppBar(
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
          body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: Image.asset('images/Top-Image.jpg')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Color(0xFF4285F4),
                      child: FlatButton(
                          onPressed: null,
                          child: Text('Join the Community')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Color(0xFFCFE0FC),
                      child: FlatButton(
                          onPressed: null,
                          child: Text('About DSC Unilag')),
                    ),
                  ),

                    ],
                  ),
                  ListTile(
                    leading: Text('Events'),
                    title: Row(
                      children: <Widget>[
                        Text('More'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(child: Image.asset('images/Top-Image.jpg')),
                              Expanded(child: Text('Open Hack Week')),
                              Expanded(child: Text('27 04 2020'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(child: Image.asset('images/Top-Image.jpg')),
                              Expanded(child: Text('Open Hack Week')),
                              Expanded(child: Text('27 04 2020'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(child: Image.asset('images/Top-Image.jpg')),
                              Expanded(child: Text('Open Hack Week')),
                              Expanded(child: Text('27 04 2020'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(child: SvgPicture.asset('images/Top Image.svg')),
                              Expanded(child: Text('Open Hack Week')),
                              Expanded(child: Text('27 04 2020'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(child: SvgPicture.asset('images/Top Image.svg')),
                              Expanded(child: Text('Open Hack Week')),
                              Expanded(child: Text('27 04 2020'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(child: SvgPicture.asset('images/Top Image.svg')),
                              Expanded(child: Text('Open Hack Week')),
                              Expanded(child: Text('27 04 2020'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Expanded(child: SvgPicture.asset('images/Top Image.svg')),
                              Expanded(child: Text('Open Hack Week')),
                              Expanded(child: Text('27 04 2020'))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
        ),
      ),
    );
  }
}

