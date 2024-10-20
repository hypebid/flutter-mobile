import 'package:flutter/material.dart';
import 'package:hypebid/comp/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // child: TwitchLoginBtn(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home Page', style: TextStyle(fontSize: 24),)
          ],
        )
      ),
      bottomNavigationBar: BtmNavigationBar(navIndex: 0),
    );
  }
}
