import 'package:flutter/material.dart';
import 'package:responsive_app/utils/size_config.dart';

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
        if (constraines.maxWidth > SizeConfig.desktopPoint) {
          return desktopWidgt(context);
        } else if (constraines.maxWidth > SizeConfig.tabletPoint) {
          return tabletWidget(context);
        } else {
          return mobileWidget(context);
        }
      },
    );
  }
}
