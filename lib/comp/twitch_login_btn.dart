import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons

import 'package:hypebid/theme.dart';
import 'package:hypebid/pages/home.dart';

class TwitchLoginBtn extends StatelessWidget {
  const TwitchLoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage(title: 'Hypebid')),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomScheme.primary, // Use your primary color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(
            FontAwesomeIcons.twitch,
            color: Colors.white, // Adjust icon color if needed
            size: 32,
          ),
          SizedBox(width: 8),
          Text(
            // 'Sign up with Twitch: ${dotenv.env['FOO'] ?? 'N/A'}',
            'Sign in with Twitch',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
