import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_drawer_item/custom_drawer.dart';
import 'package:responsive_app/widget/myCard_and_transaction_widget.dart';
import 'package:responsive_app/widget/allExpenses_and_quickInvoice_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: AllExpensesAndQuickInvoiceWidget(),
            )),
        SizedBox(
          width: 24,
        ),
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: MyCardAndTransactionWidget(),
            ))
      ],
    );
  }
}
