import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  static const items = [
    UserInfoModel(title: 'Madrani Andi', subTitle: 'Madraniandi20@gmail'),
    UserInfoModel(title: 'Madrani Andi', subTitle: 'Madraniandi20@gmail'),
    UserInfoModel(title: 'Madrani Andi', subTitle: 'Madraniandi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                    child: UserInfoListTile(
                  userInfoModel: e,
                )))
            .toList(),
      ),
    );
  }
}
