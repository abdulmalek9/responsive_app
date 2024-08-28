import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "ALL Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0XFFF1F1F1),
            ),
          ),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(Icons.keyboard_arrow_down_sharp)
            ],
          ),
        )
      ],
    );
  }
}
