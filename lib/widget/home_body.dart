import 'package:flutter/material.dart';
import 'package:responsive_app/widget/adaptive_layout.dart';
import 'package:responsive_app/widget/custom_drawer_item/custom_drawer.dart';
import 'package:responsive_app/widget/layouts/desktop_layout.dart';
import 'package:responsive_app/widget/layouts/mobile_layout.dart';
import 'package:responsive_app/widget/layouts/tablet_layout.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: globalKey,
        appBar: MediaQuery.sizeOf(context).width < 800
            ? AppBar(
                elevation: 0,
                leading: IconButton(
                    onPressed: () {
                      globalKey.currentState!.openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              )
            : null,
        backgroundColor: const Color(0xfff7f9fa),
        drawer: MediaQuery.sizeOf(context).width < 800
            ? const CustomDrawer()
            : null,
        body: AdaptiveLayout(
          mobileWidget: (context) => const MobileLayout(),
          tabletWidget: (context) => const TabletLayout(),
          desktopWidgt: (context) => const DesktopLayout(),
        ));
  }
}
