import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static const Color bluishClr = Color(0xFF4e5ae8);
  static const Color orangeClr = Color(0xCFFF8746);
  static const Color pinkClr = Color(0xFFff4667);
  static const Color white = Colors.white;
  static const primaryClr = bluishClr;
  static const Color darkGreyClr = Color(0xFF121212);
  static const Color darkHeaderClr = Color(0xFF424242);
}

class Themes {
  static final light = ThemeData(
    primaryColor: AppColor.primaryClr,
    backgroundColor: AppColor.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: AppColor.darkGreyClr,
    backgroundColor: AppColor.darkGreyClr,
    brightness: Brightness.dark,
  );

  static TextStyle get headingStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Get.isDarkMode ? AppColor.white : AppColor.darkHeaderClr,
      ),
    );
  }

  static TextStyle get subHeadingStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Get.isDarkMode ? AppColor.white : AppColor.darkHeaderClr,
      ),
    );
  }

  static TextStyle get titleStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Get.isDarkMode ? AppColor.white : AppColor.darkHeaderClr,
      ),
    );
  }

  static TextStyle get subtitleStyle {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16,
        color: Get.isDarkMode ? AppColor.white : AppColor.darkHeaderClr,
      ),
    );
  }

  static TextStyle get bodyText1Style {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Get.isDarkMode ? AppColor.white : AppColor.darkHeaderClr,
      ),
    );
  }

  static TextStyle get bodyText2Style {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Get.isDarkMode ? AppColor.white : AppColor.darkHeaderClr,
      ),
    );
  }
}
