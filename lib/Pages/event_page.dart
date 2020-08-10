import 'package:DSCUnilagApp/components/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:DSCUnilagApp/components/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:DSCUnilagApp/components/navigation_bar.dart';

class MyEventPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomNavigation(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Events",
            style: TextStyle(
              color: Colors.black,
              fontSize: kTopAppBarTextSize,
            ),
          ),
          leading: FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, '/');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(child: Text('Upcoming',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            ),
            Tab(child: Text('Past',
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            )
          ]),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset('images/Search.svg',
              ),
            )
          ],
        ),
        body: TabBarView(children: [
          ListView(
            children: <Widget>[
              EventsInListView(),
              EventsInListView(),
              EventsInListView(),
              EventsInListView()
            ],
          ),
          ListView(
            children: <Widget>[
              EventsInListView(),
              EventsInListView(),
              EventsInListView(),
              EventsInListView()
            ],
          )
        ]),
      ),
    );
  }
}

class EventsInListView extends StatelessWidget {
  const EventsInListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/open_hack_week');
          },
          child: Container(
            height: 120,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.black45,
                offset: Offset(1.0, 1.0)
              )
              ]
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  height: 150,
                  width: 150,
                  child: SvgPicture.asset('images/Top Image.svg'),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Open Hack Week',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                      Text('27TH JULY - 2ND AUGUST'),
                      Text('Akinjobi Sodiq +3 Others')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}