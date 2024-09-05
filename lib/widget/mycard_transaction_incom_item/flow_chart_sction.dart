import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_container.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/flow_chart_header.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/flowchart_body.dart';

class FlowChartSction extends StatelessWidget {
  const FlowChartSction({super.key});

  @override
  Widget build(BuildContext context) {
    // log(MediaQuery.sizeOf(context).width.toString());
    return const CustomContainer(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FlowChartHeader(),
          FlowChartBody(),
        ],
      ),
    );
  }
}
