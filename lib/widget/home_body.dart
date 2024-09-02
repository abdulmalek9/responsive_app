import 'package:flutter/material.dart';
import 'package:responsive_app/widget/adaptive_layout.dart';
import 'package:responsive_app/widget/desktop_layout.dart';
import 'package:responsive_app/widget/layouts/tablet_layout.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff7f9fa),
        body: AdaptiveLayout(
          mobileWidget: (context) => const SizedBox(),
          tabletWidget: (context) => const TabletLayout(),
          desktopWidgt: (context) => const DesktopLayout(),
        ));
  }
}
