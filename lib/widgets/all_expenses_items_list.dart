import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

import '../models/all_expenses_item_model.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        icon: Icons.account_balance_wallet_outlined, title: 'Balance'),
    AllExpensesItemModel(icon: Icons.wallet, title: 'Income'),
    AllExpensesItemModel(
        icon: Icons.account_balance_wallet_outlined, title: 'Expenses'),
  ];

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: AllExpensesItemsList.items[0],
              isActive: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: AllExpensesItemsList.items[1],
              isActive: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: AllExpensesItemsList.items[2],
              isActive: activeIndex == 2,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //   children:
    //       //items.map((e) => AllExpense,sItem(allExpensesItemModel: e)).toList(),
    //       AllExpensesItemsList.items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(
    //           horizontal: index == 1 ? 12 : 0,
    //         ),
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               activeIndex = index;
    //             });
    //           },
    //           child: AllExpensesItem(
    //             allExpensesItemModel: item,
    //             isActive: activeIndex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }
}
