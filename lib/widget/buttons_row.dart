import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_button.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            buttonText: "Add more details",
            color: Colors.white,
            textColor: Color(0xFF4EB7F2),
          ),
        ),
        Expanded(
          child: CustomButton(
            buttonText: "Send Money",
            color: Color(0xFF4EB7F2),
            textColor: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}
