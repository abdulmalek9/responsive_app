import 'package:flutter/material.dart';
import 'package:responsive_app/models/flow_chart_details_model.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widget/custom_dot_incom.dart';

class FlowChartDetails extends StatelessWidget {
  const FlowChartDetails({
    super.key,
    required this.details,
  });
  final FlowChartDetailsModel details;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: EdgeInsets.zero,

      trailing: Text(
        details.value,
        style: AppStyles.styleMedium16(context),
      ),
      title: Text(
        details.title,
        style: AppStyles.styleRegular16(context),
      ),
      leading: CustomDot(
        dotColor: details.color,
      ),
    );
  }
}
