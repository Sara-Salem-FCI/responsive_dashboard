import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive, });
final DrawerItemModel drawerItemModel;
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive? ActiveDrawerItem(drawerItemModel: drawerItemModel,)
    : InActiveDrawerItem(drawerItemModel: drawerItemModel,);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        color: Colors.blue,
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        color: Colors.blue,
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(
          color: Color(0xff4eb7f2),
        ),
      ),
    );
  }
}