import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_botton.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Customer Name', hint: 'Type Customer Name',)),
            Expanded(child: TitleTextField(title: 'Customer Email', hint: 'Type Customer Email',)),
          ],
        ),
        Row(
          children: [
            Expanded(child: TitleTextField(title: 'Item Name', hint: 'Type Item Name',)),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD',)),
          ],
        ),
        Row(
          children: [
            Expanded(child: CustomButton(backgroundColor: Colors.white,)),
            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
