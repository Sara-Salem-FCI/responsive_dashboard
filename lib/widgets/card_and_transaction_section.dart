import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/cards_section.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          CardsSection(),
          Divider(
            height: 30,
            color: Color(0xfff1f1f1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
