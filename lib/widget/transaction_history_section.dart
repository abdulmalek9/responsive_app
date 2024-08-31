import 'package:flutter/material.dart';
import 'package:responsive_app/widget/transaction_section_body.dart';
import 'package:responsive_app/widget/transaction_section_header.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionSectionHeader(),
        SizedBox(
          height: 20,
        ),
        TransactionSectionBody()
      ],
    );
  }
}
