import 'package:easy_localization/easy_localization.dart';
import 'package:findjobfinalproject/homePageView.dart';
import 'package:findjobfinalproject/mobile/constant/LocaleConstants.dart';

import 'package:flutter/material.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(child: MyApp(), supportedLocales: const [LocaleConstants.enLocale,LocaleConstants.trLocale] ,
      saveLocale: true,
      fallbackLocale: LocaleConstants.enLocale,
      path: LocaleConstants.localePath));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      home: HomePageView(),
    );
  }
}
