import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 15,
      ),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        textBaseline: TextBaseline.alphabetic,
        children: [
          Icon(
            Icons.search,
            color:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          ),
          SizedBox(width: 5),
          Text(
            'search',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
