import 'package:flutter/material.dart';
import 'package:whatsapp_res_ui/Responsive/responsive_layout.dart';
import 'package:whatsapp_res_ui/Screens/mobile_screen_layout.dart';
import 'package:whatsapp_res_ui/Screens/web_screen_layout.dart';
import 'package:whatsapp_res_ui/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
