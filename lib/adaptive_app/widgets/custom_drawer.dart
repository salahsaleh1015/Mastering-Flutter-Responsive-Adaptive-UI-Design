import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(icon: Icons.home_filled, title: "D A S H B O A R D"),
    DrawerItemModel(icon: Icons.settings, title: "S E T T I N G S"),
    DrawerItemModel(icon: Icons.info, title: "A B O U T"),
    DrawerItemModel(icon: Icons.logout, title: "L O G O U T"),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffdbdbdb),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.favorite, size: 50, color: Colors.black),
          ),

          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return DrawerItem(drawerItemModel: items[index]);
            },
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.icon, size: 25),
      title: Text(drawerItemModel.title),
    );
  }
}

class DrawerItemModel {
  final String title;
  final IconData icon;

  const DrawerItemModel({required this.title, required this.icon});
}
