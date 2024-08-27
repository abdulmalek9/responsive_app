import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileWidget,
      required this.tabletWidget,
      required this.desktopWidgt});

  final WidgetBuilder mobileWidget, tabletWidget, desktopWidgt;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraines) {
        if (constraines.maxWidth < 600) {
          return mobileWidget(context);
        } else if (constraines.maxWidth >= 600 && constraines.maxWidth < 900) {
          return tabletWidget(context);
        } else {
          return desktopWidgt(context);
        }
      },
    );
  }
}
