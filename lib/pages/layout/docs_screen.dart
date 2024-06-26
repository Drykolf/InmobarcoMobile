import 'package:flutter/material.dart';
import 'package:inmobarcomobile/components/drawer.dart';
import 'package:inmobarcomobile/components/top_appbar.dart';
import 'package:inmobarcomobile/pages/doc_pages/tenant_ct_pg.dart';

class DocsScreen extends StatefulWidget {
  const DocsScreen({super.key});

  @override
  State<DocsScreen> createState() => _DocsScreenState();
}

class _DocsScreenState extends State<DocsScreen> {
  /*int _currentIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final List<Widget> _pages = [
    const ContractPage(),
    const LetterPage()
  ];
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),
      body: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TenantCtPage()));
              },
              child: const Text('Contrato Arrendatario'),
            ),
            ElevatedButton(
              onPressed: () {
                // Code for button 2
              },
              child: const Text('Carta de presentacion arrendatario'),
            ),
            ElevatedButton(
              onPressed: () {
                // Code for button 3
              },
              child: const Text('Button 3'),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: DocsNavbar(onTabChange: (index) => navigateBottomBar(index),),
      drawer: const AppDrawer()
    );
  }
}