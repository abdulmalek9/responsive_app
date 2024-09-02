import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.dotColor});
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 12,
        height: 12,
        decoration:
            ShapeDecoration(color: dotColor, shape: const OvalBorder()));
  }
}
