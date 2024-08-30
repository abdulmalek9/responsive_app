import 'package:flutter/material.dart';
import 'package:responsive_app/widget/all_expenses_card_builder.dart';
import 'package:responsive_app/widget/all_expenses_header.dart';
import 'package:responsive_app/widget/custom_container.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesCardBuilder(),
        ],
      ),
    );
  }
}
