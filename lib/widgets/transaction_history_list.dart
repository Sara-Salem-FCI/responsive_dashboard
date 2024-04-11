import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

import '../models/transaction_model.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash withdrawal',
      date: '13 April 2022',
      amount: '\$ 20.129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing page design',
      date: '13 April 2022',
      amount: '\$ 20.129',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'Mobile app project',
      date: '13 April 2022',
      amount: '\$ 20.129',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    // return ListView.builder(
    //   itemBuilder: (context, index) {
    //     return TransactionItem(
    //       transactionModel: items[index],
    //     );
    //   },
    //   itemCount: items.length,
    //   shrinkWrap: true,
    // );
  }
}
