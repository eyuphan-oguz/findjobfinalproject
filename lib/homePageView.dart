import 'package:findjobfinalproject/responsive/desktopBody.dart';
import 'package:findjobfinalproject/responsive/mobileBody.dart';
import 'package:findjobfinalproject/responsive/responsiveLayout.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(mobileBody: MobileBody(), desktopBody: DesktopBody(),),
    );
  }
}


