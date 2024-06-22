import 'package:flutter/material.dart';
import 'package:inmobarcomobile/components/bottom_nav_bar.dart';
import 'package:inmobarcomobile/components/drawer.dart';
import 'package:inmobarcomobile/components/top_appbar.dart';
import 'package:inmobarcomobile/pages/contactInfo_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/home_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/profile_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/saved_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/search_pg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const SavedPage(),
    const ContactInfoPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: const AppDrawer()
    );
  }
}
