import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData lightTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 30),
      elevation: 0,
      centerTitle: true,
      brightness: Brightness.light,
      color: Colors.white,
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headline6: TextStyle(fontSize: 20, color: AppColors.mainColor),
      ),
    ),
    //accentColor: AppColors.accentColor,
    //canvasColor: AppColors.mainColor,
    //scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme()
        .apply(
          bodyColor: AppColors.secondColor,
        )
        .copyWith(
          bodyText1: TextStyle(color: AppColors.mainColor),
          bodyText2: TextStyle(color: AppColors.secondColor),
        ),
    inputDecorationTheme: InputDecorationTheme(
      // No sirve, ni idea por que
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: TextStyle(color: AppColors.mainColor),
      hintStyle: TextStyle(
        color: AppColors.secondColor,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 45,
        vertical: 20,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.mainColor),
        gapPadding: 5,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: AppColors.mainColor),
        gapPadding: 5,
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData();
}
