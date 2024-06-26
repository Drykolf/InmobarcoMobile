import 'package:flutter/material.dart';
import 'package:inmobarcomobile/constants/colors.dart';
import 'package:inmobarcomobile/pages/layout/docs_screen.dart';
import 'package:inmobarcomobile/pages/layout/home_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.grey1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Inmobarco'), 
            accountEmail: Text('administrativo@inmobarco.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: AppColor.lightGrey,
              child: Text('I'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ListTile(
              iconColor: AppColor.lightGrey,
              textColor: AppColor.lightGrey,
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen())),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ListTile(
              iconColor: AppColor.lightGrey,
              textColor: AppColor.lightGrey,
              leading: const Icon(Icons.edit_document),
              title: const Text('Documentos'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DocsScreen())),
            ),
          ),
        ],
      ),
    );
  }
}