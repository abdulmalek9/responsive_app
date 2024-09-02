import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_container.dart';
import 'package:responsive_app/widget/flow_chart_sction.dart';
import 'package:responsive_app/widget/mobile_layout_body.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomContainer(child: MobileLayOutBody()),
        SizedBox(
          height: 24,
        ),
        CustomContainer(child: FlowChartSction())
      ],
    ));
  }
}
