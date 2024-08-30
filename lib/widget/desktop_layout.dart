import 'package:flutter/material.dart';
import 'package:responsive_app/widget/custom_drawer.dart';
import 'package:responsive_app/widget/mobile_layout.dart';
import 'package:responsive_app/widget/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: TabletLayout()),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 2, child: MobileLayout())
      ],
    );
  }
}
