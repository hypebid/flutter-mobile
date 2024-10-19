import 'package:flutter/material.dart';
import 'package:hypebid/comp/twitch_login_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // child: TwitchLoginBtn(),
        child: TwitchLoginBtn()
      ),
    );
  }
}
