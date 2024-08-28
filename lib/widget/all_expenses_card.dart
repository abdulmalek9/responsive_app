import 'package:flutter/material.dart';
import 'package:responsive_app/widget/all_expenses_inactive_and_active_card_body.dart';

class AllExpensesCard extends StatelessWidget {
  const AllExpensesCard({super.key});

  final 
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: AllExpensesInActiveCardBody(),
    );
  }
}
