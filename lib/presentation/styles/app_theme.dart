import 'package:flutter/material.dart';
import 'package:moniepoint_estate_app/presentation/styles/app_color_extension.dart';
import 'package:moniepoint_estate_app/presentation/styles/custom_colors.dart';
import 'package:moniepoint_estate_app/presentation/styles/custom_style.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundWhite,
    colorScheme: ColorScheme.light(
      primary:CustomColors.backgroundPrimary,
      secondary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: CustomColors.backgroundPrimary,
    ),
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.white,
    unselectedWidgetColor: Colors.white,
    useMaterial3: true,
    hintColor: Colors.white,

    extensions: <ThemeExtension<dynamic>>{
      AppColorExtension(
          textPrimary: CustomColors.textPrimary,
          textBrand: CustomColors.textBrand,
          textSecondary: CustomColors.textSecondary,
      textTertiary: CustomColors.textTertiary,
        bacgroundWhite2: CustomColors.bacgroundWhite2,
        backgroundPrimary: CustomColors.backgroundPrimary,
        backgroundSecondary:CustomColors.backgroundSecondary,
        backgroundWhite: CustomColors.backgroundWhite,
        backgroundTertiary: CustomColors.backgroundTertiary,
        backgroundTertiary2:CustomColors.backgroundTertiary2,
        backgroundTertiary3: CustomColors.backgroundTertiary3,
        backgroundTertiary4: CustomColors.backgroundTertiary4,
      ),
    },
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      labelLarge: CustomStyle.customStyle,
      labelMedium: CustomStyle.customStyle,
      labelSmall: CustomStyle.customStyle,
      titleLarge: CustomStyle.customStyle,
      titleMedium: CustomStyle.customStyle,
      titleSmall: CustomStyle.customStyle,
      bodyLarge: CustomStyle.customStyle,
      bodyMedium: CustomStyle.customStyle,
      bodySmall: CustomStyle.customStyle,
    ),
    canvasColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: CustomColors.backgroundPrimary,
    ),
    fontFamily: 'Inter',
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: CustomColors.backgroundWhite,
    colorScheme: ColorScheme.light(
      primary:CustomColors.backgroundPrimary,
      secondary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: CustomColors.backgroundPrimary,
    ),
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.white,
    unselectedWidgetColor: Colors.white,
    useMaterial3: true,
    hintColor: Colors.white,

    extensions: <ThemeExtension<dynamic>>{
      AppColorExtension(
        textPrimary: CustomColors.textPrimary,
        textBrand: CustomColors.textBrand,
        textSecondary: CustomColors.textSecondary,
        textTertiary: CustomColors.textTertiary,
        bacgroundWhite2: CustomColors.bacgroundWhite2,
        backgroundPrimary: CustomColors.backgroundPrimary,
        backgroundSecondary:CustomColors.backgroundSecondary,
        backgroundWhite: CustomColors.backgroundWhite,
        backgroundTertiary: CustomColors.backgroundTertiary,
        backgroundTertiary2:CustomColors.backgroundTertiary2,
        backgroundTertiary3: CustomColors.backgroundTertiary3,
        backgroundTertiary4: CustomColors.backgroundTertiary4,
      ),
    },
    dividerTheme: DividerThemeData(
      color: Colors.grey[300],
      thickness: 0.5,
      space: 0.5,
      indent: 10,
      endIndent: 10,
    ),
    textTheme: TextTheme(
      labelLarge: CustomStyle.customStyle,
      labelMedium: CustomStyle.customStyle,
      labelSmall: CustomStyle.customStyle,
      titleLarge: CustomStyle.customStyle,
      titleMedium: CustomStyle.customStyle,
      titleSmall: CustomStyle.customStyle,
      bodyLarge: CustomStyle.customStyle,
      bodyMedium: CustomStyle.customStyle,
      bodySmall: CustomStyle.customStyle,
    ),
    canvasColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: CustomColors.backgroundPrimary,
    ),
    fontFamily: 'Inter',
  );
}
