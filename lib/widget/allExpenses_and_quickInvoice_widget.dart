import 'package:flutter/material.dart';
import 'package:responsive_app/widget/all_expenses_item/all_expenses_widget.dart';
import 'package:responsive_app/widget/quick_invoic_item/quick_invoice_widget.dart';

class AllExpensesAndQuickInvoiceWidget extends StatelessWidget {
  const AllExpensesAndQuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesWidget(),
        SizedBox(
          height: 20,
        ),
        QuickInvoiceWidget()
      ],
    );
  }
}
