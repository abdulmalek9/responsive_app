import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_container.dart';
import 'package:responsive_app/widget/flow_chart_header.dart';

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
        ],
      ),
    );
  }
}

class FlowChartBody extends StatelessWidget {
  const FlowChartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PieChart(
          PieChartData(),
        )
      ],
    );
  }
}
