import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            tabBorderRadius: 16,
            padding: EdgeInsets.all(16),
            onTabChange: (value) => onTabChange!(value),
            tabs: [
              GButton(
                icon: Icons.home
              ),
              GButton(
                icon: Icons.search
              ),
              GButton(
                icon: Icons.favorite
              ),
              GButton(
                icon: Icons.contact_page
              ),
              GButton(
                icon: Icons.person
              ),
            ],
          ),
        ),
      );
  }
}