import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flashy_tab_bar/flashy_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/HomePage/home.dart';
import 'package:servicehub/pages/MessagesPage/messagespage.dart';
import 'package:servicehub/pages/ServicesListPage/servicesListPage.dart';
import 'package:servicehub/pages/menuPage/menuPage.dart';

class MyBottomNaigationBar extends StatefulWidget {
  static const routeName = './bottomNavigation';
  @override
  _MyBottomNaigationBarState createState() => _MyBottomNaigationBarState();
}

class _MyBottomNaigationBarState extends State<MyBottomNaigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ServiceListPage(),
    MessagesPage(),
    MenuPage(),
  ];
  void _onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: _children[_currentIndex],
        // bottomNavigationBar: BottomNavigationBar(
        //   selectedItemColor: HexColor('32CD32'),
        //   unselectedItemColor: Colors.grey[500],
        //   currentIndex: _currentIndex,
        //   onTap: _onTappedBar,
        //   showUnselectedLabels: false,
        //   showSelectedLabels: false,
        //   elevation: 0,
        //   iconSize: 20,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(EvaIcons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(EvaIcons.briefcase),
        //       label: 'Services',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(EvaIcons.messageCircle),
        //       label: 'Messages',
        //     )
        //   ],
        // )
        bottomNavigationBar: FlashyTabBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          onItemSelected: _onTappedBar,
          items: [
            FlashyTabBarItem(
              activeColor: HexColor('32CD32'),
              inactiveColor: HexColor('32CD32'),
              icon: Icon(EvaIcons.home),
              title: Text('Home'),
            ),
            FlashyTabBarItem(
              activeColor: HexColor('32CD32'),
              inactiveColor: HexColor('32CD32'),
              icon: Icon(EvaIcons.search),
              title: Text('Services'),
            ),
            FlashyTabBarItem(
              activeColor: HexColor('32CD32'),
              inactiveColor: HexColor('32CD32'),
              icon: Icon(EvaIcons.messageCircle),
              title: Text('Messages'),
            ),
            FlashyTabBarItem(
              activeColor: HexColor('32CD32'),
              inactiveColor: HexColor('32CD32'),
              icon: Icon(EvaIcons.menu2),
              title: Text('Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
