import 'package:flutter/material.dart';
import 'package:responsive_app/widget/allExpenses_and_quickInvoice_widget.dart';
import 'package:responsive_app/widget/myCard_and_transaction_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceWidget(),
          MyCardAndTransactionWidget()
        ],
      ),
    );
  }
}
