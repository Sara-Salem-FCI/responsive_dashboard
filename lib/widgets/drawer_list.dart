import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(icon: Icons.dashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Icons.games_sharp, title: 'My Transaction'),
    DrawerItemModel(icon: Icons.pie_chart_outline, title: 'Statistics'),
    DrawerItemModel(icon: Icons.wallet, title: 'Wallet Account'),
    DrawerItemModel(icon: Icons.inventory_sharp, title: 'My Investments'),
  ];

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  int activeIndex =0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: DrawerList.items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            if(activeIndex != index){
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: DrawerList.items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
