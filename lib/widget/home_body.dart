import 'package:flutter/material.dart';
import 'package:responsive_app/widget/adaptive_layout.dart';
import 'package:responsive_app/widget/desktop_layout.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
      mobileWidget: (context) => const SizedBox(),
      tabletWidget: (context) => const SizedBox(),
      desktopWidgt: (context) => const DesktopLayout(),
    ));
  }
}
