import 'package:findjobfinalproject/mobile/constant/LocaleConstants.dart';
import 'package:findjobfinalproject/mobile/constant/projectColor.dart';
import 'package:findjobfinalproject/mobile/constant/projectTextStyle.dart';
import 'package:flutter/material.dart';


class CustomContinueWithTextWidget extends StatelessWidget {
  const CustomContinueWithTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,style:
      ProjectTextStyle.subTitle1.copyWith(color: ProjectColor.grey),),
    );
  }
}
