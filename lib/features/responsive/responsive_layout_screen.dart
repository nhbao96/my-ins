import 'package:flutter/material.dart';
import 'package:my_ins/common/utils/deminsions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({super.key, required this.webScreenLayout, required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth > webScreenSize){
        //web screen
        return webScreenLayout;
      }
      //mobile layout
      return mobileScreenLayout;
    });
  }
}
