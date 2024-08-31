import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.trailing,
      required this.trailingColor});
  final String title, subtitle, trailing;
  final Color trailingColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.styleSemiBold16(context),
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles.styleRegular16(context).copyWith(
          color: const Color(
            0xffAAAAAA,
          ),
        ),
      ),
      trailing: Text(
        trailing,
        style:
            AppStyles.styleSemiBold16(context).copyWith(color: trailingColor),
      ),
    );
  }
}
