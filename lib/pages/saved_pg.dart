import 'package:flutter/material.dart';
import 'package:inmobarcomobile/components/bottom_nav_bar.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'This is the favorites page.',
          style: TextStyle(fontSize: 24),
        ),
      );
  }
}