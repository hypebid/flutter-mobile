import 'package:flutter/material.dart';
import 'package:hypebid/comp/twitch_login_btn.dart';
import 'package:hypebid/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [CustomScheme.primary, Colors.white],
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HypeBid',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    color: CustomScheme.primaryBackground,
                    fontSize: 56,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Text(
                    'ƕ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: CustomScheme.primaryBackground,
                      fontSize: 96,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                TwitchLoginBtn(),
              ],
            ),
          )
        ),
      )
    );
  }
}
