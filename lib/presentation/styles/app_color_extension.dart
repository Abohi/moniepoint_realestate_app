import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  const AppColorExtension({
    required this.textPrimary,
    required this.textSecondary,
    required this.textBrand,
    required this.textTertiary,
    required this.bacgroundWhite2,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundWhite,
    required this.backgroundTertiary,
    required this.backgroundTertiary2,
    required this.backgroundTertiary3,
    required this.backgroundTertiary4,

  });


  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textBrand;
  final Color backgroundWhite;
  final Color bacgroundWhite2;
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color backgroundTertiary;
  final Color backgroundTertiary2;
  final Color backgroundTertiary3;
  final Color backgroundTertiary4;

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textBrand,
    Color? backgroundWhite,
    Color? bacgroundWhite2,
    Color? backgroundPrimary,
    Color? backgroundSecondary,
    Color? backgroundTertiary,
    Color? backgroundTertiary2,
    Color? backgroundTertiary3,
    Color? backgroundTertiary4,
  }) {
    return AppColorExtension(
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textBrand: textBrand ?? this.textBrand,
      backgroundWhite: backgroundWhite ?? this.backgroundWhite,
      bacgroundWhite2: bacgroundWhite2 ?? this.bacgroundWhite2,
      backgroundPrimary: backgroundPrimary?? this.backgroundPrimary,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      backgroundTertiary: backgroundTertiary ?? this.backgroundTertiary,
      backgroundTertiary2: backgroundTertiary2 ?? this.backgroundTertiary2,
      backgroundTertiary3: backgroundTertiary3 ?? this.backgroundTertiary3,
      backgroundTertiary4: backgroundTertiary4 ?? this.backgroundTertiary4,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }

    return AppColorExtension(
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textBrand:
      Color.lerp(textBrand, other.textBrand, t)!,
      backgroundWhite: Color.lerp(backgroundWhite, other.backgroundWhite, t)!,
      bacgroundWhite2: Color.lerp(bacgroundWhite2, other.bacgroundWhite2, t)!,
      backgroundPrimary: Color.lerp(backgroundPrimary, other.backgroundPrimary, t)!,
      backgroundSecondary: Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      backgroundTertiary:  Color.lerp(backgroundTertiary, other.backgroundTertiary, t)!,
      backgroundTertiary2: Color.lerp(backgroundTertiary2, other.backgroundTertiary2, t)!,
      backgroundTertiary3:Color.lerp(backgroundTertiary3, other.backgroundTertiary3, t)!,
      backgroundTertiary4: Color.lerp(backgroundTertiary4, other.backgroundTertiary4, t)!,);
  }
}
