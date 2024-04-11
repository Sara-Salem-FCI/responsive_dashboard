import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(icon: allExpensesItemModel.icon),
            const SizedBox(
              height: 20,
            ),
            Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(height: 5,),
            Text(
              'April 2022',
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(height: 10,),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '\$20,129',
                style: AppStyles.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
