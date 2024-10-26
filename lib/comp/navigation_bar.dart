import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:hypebid/pages/search.dart';
import 'package:hypebid/pages/home.dart';
import 'package:hypebid/theme.dart';

class BtmNavigationBar extends StatefulWidget{

  final int navIndex;
  const BtmNavigationBar({super.key, required this.navIndex});

  @override
  State<BtmNavigationBar>createState() => _BtmNavigationBarState();
}

class _BtmNavigationBarState extends State<BtmNavigationBar> {

  void _onItemTapped(int index) {
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
    return BottomNavigationBar(items: <BottomNavigationBarItem> [
      BottomNavigationBarItem(
        icon: Text(
          "ƕ",
          style: TextStyle(
            fontSize: widget.navIndex == 0 ? 32 : 32, // Adjust size based on selection
            color: widget.navIndex == 0
                ? CustomScheme.primary
                : Colors.grey, // Adjust color based on selection
          ),
        ), 
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.swap_horiz),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '',
      ),
    ],
      currentIndex: widget.navIndex,
      onTap: _onItemTapped,
      selectedItemColor: CustomScheme.primary,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 32,
      unselectedFontSize: 32,
      selectedIconTheme: const IconThemeData(size: 32),
      unselectedIconTheme: const IconThemeData(size: 32),
    );
  }
}

