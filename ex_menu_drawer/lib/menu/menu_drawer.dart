import 'dart:io';

import 'package:ex_menu_drawer/core/constant.dart';
import 'package:ex_menu_drawer/pages/_export_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  _createHeader(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Theme.of(context).primaryColor],
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight),
      ),
      child: const Stack(
        children: [
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text('área de cima'),
          ),
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Icon(
              Icons.person,
              size: 100,
            ),
          ),
        ],
      ),
    );
  }

  _createDrawerItem({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(context),
          const SizedBox(
            height: 10,
          ),
          _createDrawerItem(
            icon: Icons.home,
            text: Constant.menuHome,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          _createDrawerItem(
            icon: Icons.list,
            text: Constant.menuPageA,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const APage(),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.list,
            text: Constant.menuPageB,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BPage(),
              ),
            ),
          ),
          const Divider(),
          _createDrawerItem(
            icon: Icons.list,
            text: Constant.menuAboutPage,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AboutPage(),
              ),
            ),
          ),
          const Divider(),
          _createDrawerItem(
            icon: Icons.list,
            text: Constant.menuExit,
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }
}
