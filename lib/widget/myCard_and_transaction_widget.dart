import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_container.dart';
import 'package:responsive_app/widget/mycard_transaction_incom_item/flow_chart_sction.dart';
import 'package:responsive_app/widget/myCard_and_transaction_body.dart';

class MyCardAndTransactionWidget extends StatelessWidget {
  const MyCardAndTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Column(
      children: [
        CustomContainer(child: MyCardAndTransactionBody()),
        SizedBox(
          height: 24,
        ),
        CustomContainer(child: FlowChartSction())
      ],
    ));
  }
}
