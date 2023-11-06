import 'package:flutter/material.dart';

class ThemeColors {
  final Color primary;
  final Color primaryDark;
  final Color primaryLight;
  final Color background;
  final Color surface;
  final Color text;
  final Color disabled;
  final Color divider;
  final Color disabledLight;
  final Color negative;
  final Color positive;
  final Color warning;
  final Color ok;
  final Color error;
  final Color? secondary;
  final MaterialColor? primarySwatch;

  ThemeColors({
    required this.primary,
    required this.primaryDark,
    required this.primaryLight,
    required this.background,
    required this.surface,
    required this.text,
    required this.disabled,
    required this.divider,
    required this.disabledLight,
    required this.negative,
    required this.positive,
    required this.warning,
    required this.ok,
    this.primarySwatch,
    this.secondary,
    required this.error,
  });
}
