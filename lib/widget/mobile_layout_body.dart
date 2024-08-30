import 'package:flutter/material.dart';
import 'package:responsive_app/widget/my_card_section.dart';

class MobileLayOutBody extends StatelessWidget {
  const MobileLayOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Expanded(child: MyCardSection())],
    );
  }
}
