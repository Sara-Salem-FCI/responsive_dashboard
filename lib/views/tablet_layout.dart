import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_and_transaction_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/all_expenses_and_quick_invoice.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(width: 20,),
        Expanded(
          flex: 3,
          child:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                AllExpensesAndQuickInvoice(),
                SizedBox(height: 15,),
                CardAndTransactionSection(),
                SizedBox(height: 15,),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}
