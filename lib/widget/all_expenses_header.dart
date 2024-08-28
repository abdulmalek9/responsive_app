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
        // const Expanded(child: SizedBox()),

        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.2),
          ),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 12,
              ),
              const Icon(Icons.arrow_drop_down_sharp)
            ],
          ),
        )
      ],
    );
  }
}
