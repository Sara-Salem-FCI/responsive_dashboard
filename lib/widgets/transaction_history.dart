import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20(context),
            ),
            const Spacer(),
            Text(
              "See All",
              style: AppStyles.styleRegular16(context).copyWith(
                color: const Color(0xff4eb7f2),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 10,
        ),
        const TransactionHistoryList(),
      ],
    );
  }
}
