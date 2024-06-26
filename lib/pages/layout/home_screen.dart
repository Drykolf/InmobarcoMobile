import 'package:flutter/material.dart';
import 'package:inmobarcomobile/components/home_navbar.dart';
import 'package:inmobarcomobile/components/drawer.dart';
import 'package:inmobarcomobile/components/top_appbar.dart';
import 'package:inmobarcomobile/pages/main_pages/contactInfo_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/home_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/profile_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/saved_pg.dart';
import 'package:inmobarcomobile/pages/main_pages/search_pg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      bottomNavigationBar: HomeNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: const AppDrawer()
    );
  }
}
