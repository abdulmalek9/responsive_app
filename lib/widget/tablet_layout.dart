import 'package:flutter/material.dart';
import 'package:responsive_app/widget/all_expenses_widget.dart';
import 'package:responsive_app/widget/quick_invoice_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
