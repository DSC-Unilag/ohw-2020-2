import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_svg/svg.dart';
import 'package:DSCUnilagApp/components/navigation_bar.dart';
import 'package:DSCUnilagApp/components/bottom_navigation.dart';

class Hack extends StatelessWidget{

  dscSlack() async{
    if(await canLaunch('dscunilag.dev/slack')){
      await launch('dscunilag.dev/slack');
    }else{
      throw 'Could not launch dscunilag.dev/slack';
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Open Hack Week", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black
            ),
            onPressed: () =>
                Navigator.of(context).pop()
        ),
      ),
      body: ListView(
          children: <Widget>[
            Image.asset(
              'images/Top-Image.jpg',
              width: 411,
              height: 292,
              fit: BoxFit.cover,),
            SizedBox(
              height:5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical:5.0, horizontal:80.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Container(
                  color: Colors.green,
                  width: 10,
                  height:20,
                  child: Text('General',
                    style: TextStyle(
                        color: Colors.green[300],
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,),
                ),

              ),

            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child:
              Text('Open Hack Week', style: TextStyle(fontWeight: FontWeight.bold)),

            ) ,
            Container(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child:
              Text('Infographic accelerator iPad direct mailing paradigm shift hackathon lean startup equity channels partner network investor founders gen-z prototype. Ownership assets equity rockstar '),
            ) ,
            SizedBox(
              height:5.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child: Text('12:00pm'),

            ),
            SizedBox(
              height:5.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child: Text('27 July to 2 August 2020'),

            ),
            SizedBox(
              height:5.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child: Text('Slack'),

            ),

            RaisedButton(
              onPressed: (){dscSlack();},
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Register To Attend',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],

                ),

              ),
            ),

          ]),
    );
  }
}