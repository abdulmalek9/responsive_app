import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_container.dart';
import 'package:responsive_app/widget/flow_chart_header.dart';
import 'package:responsive_app/widget/flowchart_body.dart';

class FlowChartSction extends StatelessWidget {
  const FlowChartSction({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          FlowChartHeader(),
          SizedBox(
            height: 16,
          ),
          FlowChartBody()
        ],
      ),
    );
  }
}
