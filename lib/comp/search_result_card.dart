import 'package:flutter/material.dart';
import 'package:hypebid/theme.dart';

class SearchResultItem extends StatelessWidget {
  final String streamerName;
  final String percentage;
  final String value;
  final bool isUp;

  const SearchResultItem({
    super.key,
    required this.streamerName,
    required this.percentage,
    required this.value,
    required this.isUp,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        streamerName.substring(0, 2),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: CustomScheme.primary,
        ),
      ),
      title: Text(streamerName),
      subtitle: Text('$percentage  $value'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(isUp ? Icons.arrow_upward : Icons.arrow_downward,
              color: isUp ? Colors.green : Colors.red),
          const SizedBox(width: 4),
          Text(percentage, style: TextStyle(color: isUp ? Colors.green : Colors.red)),
        ],
      ),
    );
  }
}
