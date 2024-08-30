import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_dotes.dart';

class DotesIndcator extends StatelessWidget {
  const DotesIndcator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: CustomDotes(isActive: index == currentIndex),
              )),
    );
  }
}
