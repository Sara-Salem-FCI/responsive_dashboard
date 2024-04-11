import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: const Icon(
              CupertinoIcons.smiley_fill,
            color: Colors.blue,
          ),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
