import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 24,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm(),
          //TitleTextField(title: 'Customer Name', hint: 'Type Customer Name',),
        ],
      ),
    );
  }
}
