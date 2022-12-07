import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocaleConstants{
  static const trLocale=Locale("tr","TR");
  static const enLocale=Locale("en","US");
  static const localePath='assets/language';



  static String getStartedTextTitle="getStartedTextTitle".myLocale;
  static String buttonStartedText="buttonStartedText".myLocale;
  static String getStartedTextDescription="getStartedTextDescription".myLocale;
  static String emailHintText="emailHintText".myLocale;
  static String passwordHintText="passwordHintText".myLocale;
  static String loginPageTitle="loginPageTitle".myLocale;
  static String loginPageDescription="loginPageDescription".myLocale;
  static String loginForgotPasswordText="loginForgotPasswordText".myLocale;
  static String loginPageButtonText="loginPageButtonText".myLocale;
  static String loginPageContinueWithText="loginPageContinueWithText".myLocale;
  static String loginPageCreateUserText="loginPageCreateUserText".myLocale;
  static String loginPageCreateUserTextButton="loginPageCreateUserTextButton".myLocale;
  static String registerPageTitle="registerPageTitle".myLocale;
  static String registerPageDescription="registerPageDescription".myLocale;
  static String usernameHintText="usernameHintText".myLocale;
  static String registerPageHaveAccountText="registerPageHaveAccountText".myLocale;
  static String registerPageHaveAccountTextButton="registerPageHaveAccountTextButton".myLocale;

}


extension LocalExtension on String{
  String get myLocale=>this.tr().toString();
}