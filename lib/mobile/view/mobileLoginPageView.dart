import 'package:easy_localization/easy_localization.dart';
import 'package:findjobfinalproject/mobile/constant/LocaleConstants.dart';
import 'package:findjobfinalproject/mobile/constant/projectColor.dart';
import 'package:findjobfinalproject/mobile/constant/projectPadding.dart';
import 'package:findjobfinalproject/mobile/constant/projectTextStyle.dart';
import 'package:findjobfinalproject/mobile/widgets/customContinueWithTextWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customRoundedCornersButtonWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customSocialMediaButtonWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customTextButtonWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customTextFormFieldWidget.dart';
import 'package:flutter/material.dart';

class MobileLoginPageView extends StatefulWidget {
  const MobileLoginPageView({Key? key}) : super(key: key);

  @override
  State<MobileLoginPageView> createState() => _MobileLoginPageViewState();
}

class _MobileLoginPageViewState extends State<MobileLoginPageView> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: ProjectPadding.padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleConstants.loginPageTitle,
                style: ProjectTextStyle.headline3,
              ),
              Text(LocaleConstants.loginPageDescription,
                  style: ProjectTextStyle.subTitle1.copyWith(height: 1.8)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextFormFieldWidget(hintText: LocaleConstants.emailHintText, isPasswordField: false, controller: emailController, type: TextInputType.emailAddress, size: size, icon: Icon(Icons.email_rounded), visible: false,),
                  CustomTextFormFieldWidget(hintText: LocaleConstants.passwordHintText, isPasswordField: true, controller: passwordController, type: TextInputType.emailAddress, size: size, icon: Icon(Icons.lock_outline_rounded), visible: true,),
                  CustomTextButtonWidget(text: LocaleConstants.loginForgotPasswordText, onPressed: (){}, textStyle: ProjectTextStyle.caption,),

                ],
              ),
              CustomRoundedCornersButtonWidget(size: size, text: LocaleConstants.loginPageButtonText, onPressed: (){}),
              CustomContinueWithTextWidget(text: LocaleConstants.loginPageContinueWithText,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CustomSocialMediaButtonWidget(imagePath: 'assets/images/google.png', onPressed: (){context.setLocale(LocaleConstants.enLocale);}, size: size,),
                CustomSocialMediaButtonWidget(imagePath: 'assets/images/facebook.png', onPressed: (){context.setLocale(LocaleConstants.trLocale);}, size: size,),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(LocaleConstants.loginPageCreateUserText,style: ProjectTextStyle.bodyText
                      .copyWith(color: ProjectColor.tertiary),),
                  CustomTextButtonWidget(text: LocaleConstants.loginPageCreateUserTextButton, onPressed: (){}, textStyle: ProjectTextStyle.headline8.copyWith(fontSize: 16))
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}

