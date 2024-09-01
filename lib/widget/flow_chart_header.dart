import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widget/button_flow_chart_header.dart';

class FlowChartHeader extends StatelessWidget {
  const FlowChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const ButtonFlowChartHeader(),
      ],
    );
  }
}
