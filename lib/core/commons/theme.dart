import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_lecture_app/core/commons/colors_const.dart';
import 'package:student_lecture_app/core/commons/text_const.dart';
import 'package:student_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorConstant.white,
    brightness: Brightness.light,
    primaryColor: ColorConstant.black,
    textTheme: textTheme,
    primaryTextTheme: textTheme.apply(
      bodyColor: ColorConstant.black,
      displayColor: ColorConstant.black,
      decorationColor: ColorConstant.black,
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      toolbarHeight: UIHelper.setSp(70),
      color: Colors.white,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: GoogleFonts.poppins().copyWith(
        color: ColorConstant.black,
        fontWeight: FontWeight.bold,
        fontSize: UIHelper.setSp(17),
      ),
      shadowColor: ColorConstant.gray200.withOpacity(0.2),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: UIHelper.setSp(15),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstant.rose200; // Disabled color
          }
          return ColorConstant.rose700; // Regular color
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstant.rose200; // Disabled color
          }
          return ColorConstant.rose700; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            UIHelper.padding(vertical: 12, horizontal: 50)),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(UIHelper.setSp(10)),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConstant.rose200; // Disabled color
          }
          return ColorConstant.rose600; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: ColorConstant.rose200.withOpacity(0.5),
    ),
  );

  static TextTheme get textTheme => TextTheme(
        displayLarge: TextConstant.displayLgregular,
        displayMedium: TextConstant.displayMdregular,
        displaySmall: TextConstant.displaySmregular,
        headlineLarge: TextConstant.displayXlregular,
        headlineMedium: TextConstant.displayLgregular,
        headlineSmall: TextConstant.displayMdregular,
        titleLarge: TextConstant.displaySmregular,
        titleMedium: TextConstant.textXlregular,
        titleSmall: TextConstant.textLgregular,
        bodyLarge: TextConstant.textMdregular,
        bodyMedium: TextConstant.textSmregular,
        bodySmall: TextConstant.textXsregular,
        labelLarge: TextConstant.textMdmedium,
        labelMedium: TextConstant.textSmmedium,
        labelSmall: TextConstant.textXsmedium,
      ).apply(
        bodyColor: Colors.black,
        displayColor: Colors.black,
        decorationColor: Colors.black,
      );

  static List<BoxShadow> defaultBoxShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 5,
      blurRadius: 5,
      offset: const Offset(0, 1), // changes position of shadow
    ),
  ];
}
