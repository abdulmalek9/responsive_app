import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_images.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 425 / 215,
      child: Container(
        height: 215,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground)),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
