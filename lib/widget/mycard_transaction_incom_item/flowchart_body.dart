import 'package:flutter/material.dart';
import 'package:responsive_app/utils/size_config.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/custom_pie_chart_builder.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/flowchart_body_info.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/pie_chart_builder.dart';

class FlowChartBody extends StatelessWidget {
  const FlowChartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width <= 1514 &&
            MediaQuery.sizeOf(context).width > SizeConfig.desktopPoint
        ? const SizedBox(
            height: 150,
            child: CustomPieChartBuilder(),
          )
        : const Row(
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
