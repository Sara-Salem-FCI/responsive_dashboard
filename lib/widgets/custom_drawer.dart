import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_list.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
             child: UserInfoListTile(userInfoModel: UserInfoModel(title: 'sara', subTitle: 'sarasalem@gmail'),),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerList(),
          // SliverToBoxAdapter(
          //   child: Expanded(child: SizedBox()),
          // ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Icons.settings,
                    title: 'Setting System',
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Icons.logout,
                    title: 'Logout Account',
                  ),
                ),
                SizedBox(height: 48,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
