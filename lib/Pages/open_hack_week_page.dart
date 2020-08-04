import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:DSCUnilagApp/components/navigation_bar.dart';

class Hack extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
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
            Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Container(
                    Padding(padding: EdgeInsets.all(10.0),),
                    Text('General'),
                    color: Colors.green,
                    width: 50,
                    height:50,
                  ),

                ),

               
              

            
             ) ,
             
          ],
           

        ) ,
      ),
    );
  }
}