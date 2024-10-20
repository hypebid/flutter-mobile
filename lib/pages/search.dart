import 'package:flutter/material.dart';
import 'package:hypebid/theme.dart';
import 'package:hypebid/comp/navigation_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key, required this.title});

  final String title;

  @override
  State<Search> createState() => _SearchPageState();
}

class _SearchPageState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'Search Streamers',
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: CustomScheme.primaryBackground,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Text(
              'GW',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: CustomScheme.secondaryText,
              ),
            ),
            title: Text('GiantWaffle'),
            subtitle: Text('(10.46%) 147.05 hu'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_upward, color: CustomScheme.accent4),
                SizedBox(width: 4),
                Text('10.46%', style: TextStyle(color: CustomScheme.accent4)),
              ],
            ),
          );
        },
      ),
    );
  }
}

