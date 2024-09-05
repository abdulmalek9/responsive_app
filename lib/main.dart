import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/widget/home_body.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ResponsiveApp(),
    ),
  );
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const HomeBody(),
    );
  }
}
