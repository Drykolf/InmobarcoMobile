import 'package:flutter/material.dart';
import 'package:inmobarcomobile/components/bottom_nav_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'This is the search page.',
          style: TextStyle(fontSize: 20),
        ),
      );
  }
}