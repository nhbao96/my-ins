import 'package:flutter/material.dart';
import 'package:my_ins/common/utils/colors.dart';
import 'package:my_ins/features/responsive/mobie_screen_layout.dart';
import 'package:my_ins/features/responsive/responsive_layout_screen.dart';
import 'package:my_ins/features/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:mobileBackgroundColor
      ),
      home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout() , webScreenLayout: WebScreenLayout(),)
    );
  }
}