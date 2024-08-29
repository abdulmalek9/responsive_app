import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.color,
      required this.buttonText,
      required this.textColor});
  final Color color, textColor;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: AppStyles.styleSemiBold16(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
