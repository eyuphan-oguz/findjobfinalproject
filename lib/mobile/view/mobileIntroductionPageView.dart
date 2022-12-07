import 'package:easy_localization/easy_localization.dart';
import 'package:findjobfinalproject/mobile/constant/LocaleConstants.dart';
import 'package:findjobfinalproject/mobile/constant/projectPadding.dart';
import 'package:findjobfinalproject/mobile/constant/projectTextStyle.dart';
import 'package:findjobfinalproject/mobile/view/mobileLoginPageView.dart';
import 'package:findjobfinalproject/mobile/widgets/customRoundedCornersButtonWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customTextButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MobileIntroductionPageView extends StatefulWidget {
  const MobileIntroductionPageView({Key? key}) : super(key: key);

  @override
  State<MobileIntroductionPageView> createState() => _MobileIntroductionPageViewState();
}

class _MobileIntroductionPageViewState extends State<MobileIntroductionPageView> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding:  ProjectPadding.padding,
          child: Column(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/introduction.png'),
                  Text(LocaleConstants.getStartedTextTitle,style: ProjectTextStyle.headline1,textAlign:TextAlign.center),
                  Text(LocaleConstants.getStartedTextDescription,style: ProjectTextStyle.subTitle1.copyWith(height: 1.8),textAlign:TextAlign.center),
                  CustomRoundedCornersButtonWidget(size: size,imagePath: "assets/images/arrow.png", text: LocaleConstants.buttonStartedText,onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> MobileLoginPageView()));},),

                ],
              ),
        )),
      );
  }
}

