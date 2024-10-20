import 'package:flutter/material.dart';
import 'package:hypebid/theme.dart';
import 'package:hypebid/comp/navigation_bar.dart';
import 'package:hypebid/comp/search_result_card.dart';

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
          return const SearchResultItem(
            streamerName: 'GiantWaffle',
            percentage: '10.46%',
            value: '147.05 hu',
            isUp: true,
          );
        },
      ),
      bottomNavigationBar: const BtmNavigationBar(navIndex: 1),
    );
  }
}

