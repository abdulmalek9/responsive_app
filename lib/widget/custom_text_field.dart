import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textHint,
    this.suffixIcon,
  });

  final String textHint;

  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: suffixIcon ?? const SizedBox(),
          contentPadding: const EdgeInsets.all(20.0),
          filled: true,
          fillColor: const Color(0xFFFAFAFA),
          hintText: textHint,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none)),
    );
  }
}
