import 'package:flutter/material.dart';
import 'package:hypebid/theme.dart';
import 'package:hypebid/comp/navigation_bar.dart';
import 'package:hypebid/comp/search_result_card.dart';
import 'package:hypebid/pages/search_details.dart'; // Import search_details.dart

class Search extends StatefulWidget {
  const Search({super.key, required this.title});

  final String title;

  @override
  State<Search> createState() => _SearchPageState();
}

class _SearchPageState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  final List<SearchResultItemCard> allSearchResults = [
    const SearchResultItemCard(
      streamerName: 'GiantWaffle',
      streamerTag: 'GW',
      percentage: '10.46',
      diff: '13.92',
      value: '147.05',
      isUp: true,
    ),
    const SearchResultItemCard(
      streamerName: 'Lirik',
      streamerTag: 'LR',
      percentage: '5.03',
      diff: '2.68',
      value: '632.85',
      isUp: true,
    ),
    const SearchResultItemCard(
      streamerName: 'xqc',
      streamerTag: 'XQC',
      percentage: '-32.03',
      diff: '12.47',
      value: '396.24',
      isUp: false,
    ),
  ];
  List<SearchResultItemCard> filteredSearchResults = [];

  @override
  void initState() {
    super.initState();
    filteredSearchResults = allSearchResults; // Initialize with all results
  }

  void _filterSearchResults(String searchTerm) {
    filteredSearchResults = allSearchResults.where((item) =>
        item.streamerName.toLowerCase().contains(searchTerm.toLowerCase()) ||
        item.streamerTag.toLowerCase().contains(searchTerm.toLowerCase())
    ).toList();
    setState(() {}); // Update UI with filtered results
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextField(
          controller: _searchController,
          onChanged: (searchTerm) => _filterSearchResults(searchTerm),
          decoration: const InputDecoration(
            hintText: 'Search Streamers',
            prefixIcon: Icon(Icons.search),
            filled: true,
            fillColor: CustomScheme.primaryBackground,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredSearchResults.length,
        itemBuilder: (context, index) {
          final itemData = filteredSearchResults[index];
          return GestureDetector(
            onTap: () {
              // Navigate to SearchDetails page
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      SearchDetails(
                    title: 'Search Details',
                    searchData: itemData,
                  ),
                  transitionDuration: Duration.zero, // Set transition duration to zero
                ),
              );
            },
            child: AbsorbPointer(
              child: Column(
                children: [
                  SearchResultItemCard(
                    streamerName: itemData.streamerName,
                    streamerTag: itemData.streamerTag,
                    percentage: itemData.percentage,
                    diff: itemData.diff,
                    value: itemData.value,
                    isUp: itemData.isUp,
                  ),
                  const Divider(
                    indent: 24,
                    endIndent: 24,
                    color: CustomScheme.secondaryText,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const BtmNavigationBar(navIndex: 1),
    );
  }
}
