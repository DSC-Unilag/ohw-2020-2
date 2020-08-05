import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:DSCUnilagApp/components/navigation_bar.dart';

class MyEventPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Events", style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold
            ),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black
            ),
             onPressed: () =>
             Navigator.of(context).pop()
             ),
        ),
       

      body: SafeArea(
        
        child: Row(
          children: <Widget>[
            Padding(padding:EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0)),
            Text('Upcoming'),
            Padding(padding:EdgeInsets.all(20.0)),
            Text('Past'),
            Spacer(),
            IconButton(
              icon: Icon(Icons.search,
              ), onPressed: () {  },
            ),
            
            ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('images/Top-Image.jpg'),
                  Text('Open Hack Week/n 27TH JULY - 2ND AUGUST/n Akinjobi Sodiq + 3 Others'
                    
                  ),

              ],)
            ),

              ]
              

            ),
            
            
          ],
        ),    

       
      ),   


         
       ),
    );

  }
}