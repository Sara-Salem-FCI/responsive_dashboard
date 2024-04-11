import 'package:flutter/material.dart';

import '../widgets/all_expenses_and_quick_invoice.dart';
import '../widgets/card_and_transaction_section.dart';
import '../widgets/income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(height: 15,),
          CardAndTransactionSection(),
          SizedBox(height: 15,),
          IncomeSection(),
        ],
      ),
    );
  }
}