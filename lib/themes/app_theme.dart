import 'package:expense_tracking/themes/material_color_generator.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const white = Color(0xffffffff);
  static const black = Color(0x00000000);
  static const primary = Color(0xff0E4E85);
  static const secondary = Color(0xff219DDD);
  static const darkBlue = Color(0xff0F253F);
  static const grey = Color(0xff898A8D);
  static const lightGrey = Color(0xffCCD6DD);
  static const ligherGrey = Color(0xffEFEFF4);
  static const red = Color(0xffFF0A1C);
  static const green = Color(0xff4ABF3B);
  static const yellow = Color(0xffE8AF44);
  static const teal = Color(0xff2AA4AB);

  static const scaffoldBackground = Color(0xffEFEFF4);
  static const iconInActive = Color(0xff6c7989);
}

class AppTheme {
  const AppTheme._();

  static ThemeData define() {
    return ThemeData(
      primaryColor: AppColors.primary,
      primarySwatch: MaterialColorGenerator.generateMaterialColor(
        AppColors.primary,
      ),
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: false,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          color: Colors.black,
          fontSize: 17.0,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        bodyText2: TextStyle(
          color: AppColors.darkBlue,
          fontSize: 13,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
      ),
      dividerColor: AppColors.lightGrey,
      // fontFamily: 'Poppins',
    );
  }
}
