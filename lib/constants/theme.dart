// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:the_quran_app/constants/color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  final appTheme = ThemeData(
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.bgColor,
      iconTheme: IconThemeData(color: AppColor.whiteColor),
      textTheme: TextTheme(
        displaySmall: GoogleFonts.openSans(
            color: AppColor.blackColor,
            fontWeight: FontWeight.w500,
            fontSize: 14.0),
        displayMedium: GoogleFonts.openSans(
            color: AppColor.blackColor,
            fontWeight: FontWeight.w700,
            fontSize: 19.0),
        displayLarge: GoogleFonts.openSans(
            color: AppColor.blackColor,
            fontWeight: FontWeight.w800,
            fontSize: 28.0),
      ));
}
