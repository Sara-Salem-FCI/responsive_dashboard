import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_items_list.dart';
import 'package:responsive_dashboard/widgets/expenses_header.dart';

import 'custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          ExpensesHeader(),
          SizedBox(
            height: 10,
          ),
          AllExpensesItemsList(),
        ],
      ),
    );
  }
}
