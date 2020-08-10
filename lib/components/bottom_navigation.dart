import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: SvgPicture.asset('images/Home-Filled.svg',)
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(child : SvgPicture.asset('images/Events.svg'),
          onTap: (){
            Navigator.pushNamed(context, '/events');
          },),
          title: Text('Events'),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(child: SvgPicture.asset('images/Core Team.svg'),
          onTap: (){
            Navigator.pushNamed(context, '/core team');
          },),
          title: Text('Core Team'),
        ),
      ],

    );
  }
}
