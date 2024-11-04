import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome icons
import 'package:url_launcher/url_launcher.dart';

import 'package:hypebid/theme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hypebid/pages/home.dart';

class TwitchLoginBtn extends StatefulWidget {
  const TwitchLoginBtn({super.key});

  @override
  State<TwitchLoginBtn> createState() => _TwitchLoginBtnState();
}

class _TwitchLoginBtnState extends State<TwitchLoginBtn> {
  Future<void> _launchURL() async {
    final Uri apiUrl = Uri.parse(
        'https://container-service-1.c0mwt45dj7y3j.us-east-2.cs.amazonlightsail.com/api/v1/auth/twitch/login');
    final response = await http.get(apiUrl);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(utf8.decode(response.bodyBytes));
      final authUrl = jsonData['auth_url'];

      // Launch URL in browser
      if (await launchUrl(Uri.parse(authUrl))) {
        // User returned from browser, navigate to homepage
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage(title: 'HomePage',)),
        );
      }
    } else {
      // Handle API error
      print('Error fetching API data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchURL,
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
