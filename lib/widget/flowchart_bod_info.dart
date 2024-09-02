import 'package:flutter/material.dart';
import 'package:responsive_app/models/flow_chart_details_model.dart';
import 'package:responsive_app/widget/flowchart_details.dart';

class FlowChartBodyInfo extends StatelessWidget {
  const FlowChartBodyInfo({
    super.key,
  });
  static List<FlowChartDetailsModel> details = [
    FlowChartDetailsModel(
        value: "%40", title: "Design service", color: const Color(0xff208CC8)),
    FlowChartDetailsModel(
        value: "%25", title: "Design product", color: const Color(0xff4EB7F2)),
    FlowChartDetailsModel(
        value: "%20", title: "Product royalti", color: const Color(0xff064061)),
    FlowChartDetailsModel(
        value: "%22", title: "Other", color: const Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return FlowChartDetails(
          details: details[index],
        );
      },
    );
  }
}
