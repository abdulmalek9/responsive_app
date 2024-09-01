import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class ButtonFlowChartHeader extends StatelessWidget {
  const ButtonFlowChartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFF1F1F1),
        ),
      ),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_drop_down, size: 16),
        ],
      ),
    );
  }
}
