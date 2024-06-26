import 'package:flutter/material.dart';

class LetterPage extends StatelessWidget {
  const LetterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Letter Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}