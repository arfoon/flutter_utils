import 'dart:convert';

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
  final Color? secondaryDark;
  final Color? secondaryLight;
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
    this.secondaryDark,
    this.secondaryLight,
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
    if (secondaryDark != null) {
      result.addAll({'secondaryDark': secondaryDark!.value});
    }
    if (secondaryLight != null) {
      result.addAll({'secondaryLight': secondaryLight!.value});
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
      secondaryDark:
          map['secondaryDark'] != null ? Color(map['secondaryDark']) : null,
      secondaryLight:
          map['secondaryLight'] != null ? Color(map['secondaryLight']) : null,
    );
  }

  ThemeColors copyWith({
    Color? primary,
    Color? primaryDark,
    Color? primaryLight,
    Color? background,
    Color? surface,
    Color? text,
    Color? disabled,
    Color? divider,
    Color? disabledLight,
    Color? negative,
    Color? positive,
    Color? warning,
    Color? ok,
    Color? error,
    Color? secondary,
    Color? secondaryDark,
    Color? secondaryLight,
    MaterialColor? primarySwatch,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      primaryDark: primaryDark ?? this.primaryDark,
      primaryLight: primaryLight ?? this.primaryLight,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      text: text ?? this.text,
      disabled: disabled ?? this.disabled,
      divider: divider ?? this.divider,
      disabledLight: disabledLight ?? this.disabledLight,
      negative: negative ?? this.negative,
      positive: positive ?? this.positive,
      warning: warning ?? this.warning,
      ok: ok ?? this.ok,
      error: error ?? this.error,
      secondary: secondary ?? this.secondary,
      secondaryDark: secondaryDark ?? this.secondaryDark,
      secondaryLight: secondaryLight ?? this.secondaryLight,
      primarySwatch: primarySwatch ?? this.primarySwatch,
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeColors.fromJson(String source) =>
      ThemeColors.fromMap(json.decode(source));
}
