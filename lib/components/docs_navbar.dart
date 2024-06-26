import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:inmobarcomobile/constants/colors.dart';

class DocsNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const DocsNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            backgroundColor: AppColor.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            tabBorderRadius: 15,
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            onTabChange: (value) => onTabChange!(value),
            tabs: const [
              GButton(
                icon: Icons.edit_document
              ),
              GButton(
                icon: Icons.document_scanner
              ),
            ],
          ),
        ),
      );
  }
}