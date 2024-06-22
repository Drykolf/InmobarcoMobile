import 'package:flutter/material.dart';
import 'package:inmobarcomobile/constants/colors.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: AppColor.grey1,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Inmobarco'),
            accountEmail: Text('administrativo@inmobarco.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('I'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: ListTile(
              iconColor: AppColor.lightGrey,
              textColor: AppColor.lightGrey,
              leading: Icon(Icons.edit_document),
              title: Text('Documentos'),
            ),
          ),
        ],
      ),
    );
  }
}