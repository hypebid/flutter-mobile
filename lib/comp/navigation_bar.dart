import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:hypebid/pages/search.dart';
import 'package:hypebid/pages/home.dart';
import 'package:hypebid/theme.dart';

class BtmNavigationBar extends StatefulWidget{
  const BtmNavigationBar({super.key});

  @override
  State<BtmNavigationBar>createState() => _BtmNavigationBarState();
}

class _BtmNavigationBarState extends State<BtmNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.push(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        duration: const Duration(milliseconds: 1),
        child: _pages[index]
      ),
    );

  }

  final List<Widget> _pages = [
    const HomePage(title: 'Home'),
    const Search(title: 'Search'),
    const HomePage(title: 'Notifications'),
    const HomePage(title: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem> [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.message),
        label: 'Notifications',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: CustomScheme.primary,
      unselectedItemColor: Colors.grey,
    );
  }
}

