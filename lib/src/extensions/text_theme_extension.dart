import 'package:flutter/material.dart';

extension TextThemeExtension on TextTheme {
  TextStyle get caption2 => labelMedium!;
  TextStyle get caption3 => labelLarge!;
  TextStyle get headline2Bold => headlineLarge!;
  // TextStyle get headline4Bold => displayLarge!;
  TextStyle get bodyText3 => bodyLarge!;
  TextStyle get subtitle2Bold => titleLarge!;

  TextStyle? get label => labelSmall;
  TextStyle? get body => bodySmall;
  TextStyle? get title => titleSmall;
  TextStyle? get headline => headlineSmall;
  TextStyle? get display => displaySmall;

  TextStyle? get labelBold => labelLarge;
  TextStyle? get bodyBold => bodyLarge;
  TextStyle? get titleBold => titleLarge;
  TextStyle? get headlineBold => headlineLarge;
  TextStyle? get displayBold => displayLarge;
}
