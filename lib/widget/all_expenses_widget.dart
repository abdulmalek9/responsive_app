import 'package:flutter/material.dart';
import 'package:responsive_app/widget/all_expenses_card_builder.dart';
import 'package:responsive_app/widget/all_expenses_header.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesCardBuilder()
        ],
      ),
    );
  }
}
