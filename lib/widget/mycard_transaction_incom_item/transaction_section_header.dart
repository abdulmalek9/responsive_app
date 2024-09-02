import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class TransactionSectionHeader extends StatelessWidget {
  const TransactionSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            ))
      ],
    );
  }
}
