import 'package:flutter/material.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/flowchart_body_info.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/pie_chart_builder.dart';

class FlowChartBody extends StatelessWidget {
  const FlowChartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: PieChartBuilder()),
        SizedBox(
          width: 4,
        ),
        Expanded(flex: 2, child: FlowChartBodyInfo())
      ],
    );
  }
}
