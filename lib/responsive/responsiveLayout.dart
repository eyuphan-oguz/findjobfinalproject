import 'package:flutter/material.dart';

import 'dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({required this.mobileBody,required this.desktopBody}) ;
  final Widget mobileBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<mobileWidth){
        return mobileBody;
      }else{
        return desktopBody;
      }
    });
  }
}
