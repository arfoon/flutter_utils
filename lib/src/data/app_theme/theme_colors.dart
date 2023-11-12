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

  const ThemeColors({
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

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'primary': primary.value});
    result.addAll({'primaryDark': primaryDark.value});
    result.addAll({'primaryLight': primaryLight.value});
    result.addAll({'background': background.value});
    result.addAll({'surface': surface.value});
    result.addAll({'text': text.value});
    result.addAll({'disabled': disabled.value});
    result.addAll({'divider': divider.value});
    result.addAll({'disabledLight': disabledLight.value});
    result.addAll({'negative': negative.value});
    result.addAll({'positive': positive.value});
    result.addAll({'warning': warning.value});
    result.addAll({'ok': ok.value});
    result.addAll({'error': error.value});
    if (secondary != null) {
      result.addAll({'secondary': secondary!.value});
    }

    return result;
  }

  factory ThemeColors.fromMap(Map<String, dynamic> map) {
    return ThemeColors(
      primary: Color(map['primary']),
      primaryDark: Color(map['primaryDark']),
      primaryLight: Color(map['primaryLight']),
      background: Color(map['background']),
      surface: Color(map['surface']),
      text: Color(map['text']),
      disabled: Color(map['disabled']),
      divider: Color(map['divider']),
      disabledLight: Color(map['disabledLight']),
      negative: Color(map['negative']),
      positive: Color(map['positive']),
      warning: Color(map['warning']),
      ok: Color(map['ok']),
      error: Color(map['error']),
      secondary: map['secondary'] != null ? Color(map['secondary']) : null,
    );
  }
}
