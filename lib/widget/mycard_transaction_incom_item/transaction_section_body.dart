import 'package:flutter/material.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/transaction_listtile.dart';

class TransactionSectionBody extends StatelessWidget {
  const TransactionSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionListTile(
          title: "Cash Withdrawal",
          subtitle: "13 Apr, 2022",
          trailing: r"$20,129",
          trailingColor: Color(0xFFF3735E),
        ),
        TransactionListTile(
          title: "Landing Page project",
          subtitle: "13 Apr, 2022 at 3:30 PM",
          trailing: r"$2,000",
          trailingColor: Color(0xFF7DD97B),
        ),
        TransactionListTile(
          title: "Juni Mobile App project",
          subtitle: "13 Apr, 2022 at 3:30 PM",
          trailing: r"$20,129",
          trailingColor: Color(0xFF7DD97B),
        ),
      ],
    );
  }
}
