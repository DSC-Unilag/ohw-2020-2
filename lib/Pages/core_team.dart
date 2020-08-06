import 'package:DSCUnilagApp/components/bottom_navigation.dart';
import 'package:DSCUnilagApp/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';


class CoreTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
        title: Text('Core Team',
        style: TextStyle(
          fontSize: kTopAppBarTextSize,
          color: Colors.black
        ),),
      ),
      body: ListView(
        children: <Widget>[
          CoreTeamProfile(
            name: 'Akinjobi Sodiq',
            position: 'Lead DSC Unilag 2019/2020 Session',
            firstImageToUse: 'images/Github.svg',
            secondImageToUse: 'images/Twitter.svg',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CoreTeamProfile(
                name: 'Ifihan Olusheye',
                position: 'Agbayo DSC',
                firstImageToUse: 'images/Github.svg',
                secondImageToUse: 'images/Twitter.svg',
              ),
              CoreTeamProfile(
                name: 'Ifihan Olusheye',
                position: 'Agbayo DSC',
                firstImageToUse: 'images/Behance.svg',
                secondImageToUse: 'images/Twitter.svg',
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CoreTeamProfile(
                name: 'Ifihan Olusheye',
                position: 'Agbayo DSC',
                firstImageToUse: 'images/Github.svg',
                secondImageToUse: 'images/Twitter.svg',
              ),
              CoreTeamProfile(
                name: 'Ifihan Olusheye',
                position: 'Agbayo DSC',
                firstImageToUse: 'images/Behance.svg',
                secondImageToUse: 'images/Twitter.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CoreTeamProfile extends StatelessWidget {
  CoreTeamProfile({this.name, this.position, this.firstImageToUse, this.secondImageToUse});

  final String name;
  final String position;
  final String firstImageToUse;
  final String secondImageToUse;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            child: SvgPicture.asset('images/Top Image.svg'),
          ),
          Text(name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),),
          Text(position),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(firstImageToUse),
                  decoration: BoxDecoration(
                      color: Color(0xFFE7EFFE),
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset(secondImageToUse),
                  decoration: BoxDecoration(
                    color: Color(0xFFE7EFFE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
