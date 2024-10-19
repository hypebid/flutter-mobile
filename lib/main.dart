import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:hypebid/theme.dart';
import 'package:hypebid/comp/navigation_bar.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HypeBid',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: CustomScheme.primary,
          secondary: CustomScheme.secondary,
          tertiary: CustomScheme.tertiary,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: CustomScheme.darkPrimary,
          secondary: CustomScheme.darkSecondary,
          tertiary: CustomScheme.darkTertiary
        )
      ),
      home: const NavigationPage(),
    );
  }
}
