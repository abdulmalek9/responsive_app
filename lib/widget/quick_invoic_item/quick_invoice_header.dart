import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold16(context),
        ),
        const Spacer(),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
