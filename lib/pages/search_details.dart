import 'package:flutter/material.dart';
import 'package:hypebid/comp/navigation_bar.dart';
import 'package:hypebid/comp/search_result_card.dart';

class SearchDetails extends StatefulWidget {
  final String title;
  final SearchResultItemCard searchData;

  const SearchDetails({super.key, required this.title, required this.searchData});


  @override
  State<SearchDetails> createState() => _SearchDetailsState();
}

class _SearchDetailsState extends State<SearchDetails> {

  @override
  Widget build(BuildContext context) {
    print("Building Details page...");
    return Scaffold(
      body: Center(
        // child: TwitchLoginBtn(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Search Details', style: TextStyle(fontSize: 24)),
            Text(widget.searchData.streamerTag, style: const TextStyle(fontSize: 16)),
            Text(widget.searchData.streamerName, style: const TextStyle(fontSize: 16)),
            Text(widget.searchData.percentage, style: const TextStyle(fontSize: 16)),
            Text(widget.searchData.value, style: const TextStyle(fontSize: 16)),
            Text(widget.searchData.isUp.toString(), style: const TextStyle(fontSize: 16)),
          ],
        )
      ),
      bottomNavigationBar: const BtmNavigationBar(navIndex: 0),
    );
  }
}
