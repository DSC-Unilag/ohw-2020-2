import 'package:DSCUnilagApp/Pages/core_team.dart';
import 'package:flutter/material.dart';

import 'package:DSCUnilagApp/Pages/home_page.dart';
import 'package:DSCUnilagApp/Pages/about_dsc.dart';
import 'package:DSCUnilagApp/Pages/event_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC App',
      theme: ThemeData(
        primaryIconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      home: MyHomePage(),
    );
  }
}
