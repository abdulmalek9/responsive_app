import 'package:flutter/material.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/my_card_section.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/transaction_history_section.dart';

class MyCardAndTransactionBody extends StatelessWidget {
  const MyCardAndTransactionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyCardSection(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Divider(
            thickness: 1,
            color: Color(0xffF1F1F1),
          ),
        ),
        TransactionHistorySection(),
      ],
    );
  }
}
