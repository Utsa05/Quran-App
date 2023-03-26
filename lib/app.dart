// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:the_quran_app/constants/color.dart';
import 'package:the_quran_app/constants/string.dart';
import 'package:get/get.dart';
import 'package:the_quran_app/constants/theme.dart';
import 'package:the_quran_app/route.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: AppTheme().appTheme,
      initialRoute: AppString.initialRoute,
      getPages: AppRoute.routes,
    );
  }
}
