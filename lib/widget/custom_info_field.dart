import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widget/custom_text_field.dart';

class CustomInfoField extends StatelessWidget {
  const CustomInfoField(
      {super.key,
      required this.lable,
      required this.textHint,
      this.suffixIcon});

  final String lable;
  final String textHint;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(textHint: textHint, suffixIcon: suffixIcon)
      ],
    );
  }
}
