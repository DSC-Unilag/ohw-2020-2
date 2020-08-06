import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/Home.svg'),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/Events.svg'),
          title: Text('Events'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('images/Core Team.svg'),
          title: Text('Core Team'),
        ),
      ],

    );
  }
}
