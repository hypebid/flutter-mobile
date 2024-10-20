import 'package:flutter/material.dart';
import 'package:hypebid/comp/navigation_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key, required this.title});

  final String title;

  @override
  State<Search> createState() => _SearchPageState();
}

class _SearchPageState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // child: TwitchLoginBtn(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Search Page!', style: TextStyle(fontSize: 24))
          ],
        ),
      ),
      bottomNavigationBar: BtmNavigationBar(navIndex: 1),
    );
  }
}

