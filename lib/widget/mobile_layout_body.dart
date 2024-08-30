import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_styles.dart';
import 'package:responsive_app/widget/my_card_widget.dart';

class MobileLayOutBody extends StatelessWidget {
  const MobileLayOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My card",
          style: AppStyles.styleSemiBold16(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const MyCardWidget(),
      ],
    );
  }
}
