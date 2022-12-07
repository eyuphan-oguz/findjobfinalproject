import 'package:easy_localization/easy_localization.dart';
import 'package:findjobfinalproject/mobile/constant/LocaleConstants.dart';
import 'package:findjobfinalproject/mobile/constant/projectColor.dart';
import 'package:findjobfinalproject/mobile/constant/projectIcon.dart';
import 'package:findjobfinalproject/mobile/constant/projectPadding.dart';
import 'package:findjobfinalproject/mobile/constant/projectTextStyle.dart';
import 'package:findjobfinalproject/mobile/widgets/customContinueWithTextWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customRoundedCornersButtonWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customSocialMediaButtonWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customTextButtonWidget.dart';
import 'package:findjobfinalproject/mobile/widgets/customTextFormFieldWidget.dart';
import 'package:flutter/material.dart';


class MobileRegisterPageView extends StatefulWidget {
  const MobileRegisterPageView({Key? key}) : super(key: key);

  @override
  State<MobileRegisterPageView> createState() => _MobileRegisterPageViewState();
}
TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();

class _MobileRegisterPageViewState extends State<MobileRegisterPageView> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: ProjectPadding.padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleConstants.registerPageTitle,
                style: ProjectTextStyle.headline3,
              ),
              Text(LocaleConstants.registerPageDescription,
                  style: ProjectTextStyle.subTitle1.copyWith(height: 1.8)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextFormFieldWidget(hintText: LocaleConstants.usernameHintText, isPasswordField: false, controller: emailController, type: TextInputType.text, size: size, icon: ProjectIcon.personIcon, visible: false,),
                  CustomTextFormFieldWidget(hintText: LocaleConstants.emailHintText, isPasswordField: false, controller: emailController, type: TextInputType.emailAddress, size: size, icon: ProjectIcon.emailIcon, visible: false,),
                  CustomTextFormFieldWidget(hintText: LocaleConstants.passwordHintText, isPasswordField: true, controller: passwordController, type: TextInputType.text, size: size, icon: ProjectIcon.passwordIcon, visible: true,),
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
                  Text(LocaleConstants.registerPageHaveAccountText,style: ProjectTextStyle.bodyText
                      .copyWith(color: ProjectColor.tertiary),),
                  CustomTextButtonWidget(text: LocaleConstants.registerPageHaveAccountTextButton, onPressed: (){}, textStyle: ProjectTextStyle.headline8.copyWith(fontSize: 16))
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
