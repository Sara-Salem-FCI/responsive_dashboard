import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/card_and_transaction_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 280,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 620+350,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 620,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: AllExpensesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 350,
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          CardAndTransactionSection(),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
