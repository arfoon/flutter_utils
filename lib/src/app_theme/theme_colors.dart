import 'dart:convert';

import 'package:flutter/material.dart';

class ThemeColors {
  final Color primary;
  final Color primaryDark;
  final Color primaryLight;
  final Color? onPrimary;

  final Color background;
  final Color? onBackground;

  final Color surface;
  final Color? onSurface;

  final Color text;
  final Color? textLight;
  final Color? textDark;
  final Color? onText;

  final Color divider;
  final Color? dividerLight;
  final Color? dividerDark;
  final Color? onDivider;

  final Color disabled;
  final Color? disabledLight;
  final Color? disabledDark;
  final Color? onDisabled;

  final Color negative;
  final Color? negativeLight;
  final Color? negativeDark;
  final Color? onNegative;

  final Color positive;
  final Color? positiveLight;
  final Color? positiveDark;
  final Color? onPositive;

  final Color warning;
  final Color? warningLight;
  final Color? warningDark;
  final Color? onWarning;

  final Color ok;
  final Color? okLight;
  final Color? okDark;
  final Color? onOk;

  final Color error;
  final Color? errorLight;
  final Color? errorDark;
  final Color? onError;

  final Color? secondary;
  final Color? secondaryDark;
  final Color? secondaryLight;
  final Color? onSecondary;

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
    required this.disabledDark,
    this.onPrimary,
    this.onBackground,
    this.onSurface,
    this.textLight,
    this.textDark,
    this.onText,
    this.dividerLight,
    this.dividerDark,
    this.onDivider,
    this.onDisabled,
    this.negativeLight,
    this.negativeDark,
    this.onNegative,
    this.positiveLight,
    this.positiveDark,
    this.onPositive,
    this.warningLight,
    this.warningDark,
    this.onWarning,
    this.okLight,
    this.okDark,
    this.onOk,
    this.errorLight,
    this.errorDark,
    this.onError,
    this.onSecondary,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'primary': primary.value});
    result.addAll({'primaryDark': primaryDark.value});
    result.addAll({'primaryLight': primaryLight.value});
    if (onPrimary != null) {
      result.addAll({'onPrimary': onPrimary!.value});
    }
    result.addAll({'background': background.value});
    if (onBackground != null) {
      result.addAll({'onBackground': onBackground!.value});
    }
    result.addAll({'surface': surface.value});
    if (onSurface != null) {
      result.addAll({'onSurface': onSurface!.value});
    }
    result.addAll({'text': text.value});
    if (textLight != null) {
      result.addAll({'textLight': textLight!.value});
    }
    if (textDark != null) {
      result.addAll({'textDark': textDark!.value});
    }
    if (onText != null) {
      result.addAll({'onText': onText!.value});
    }
    result.addAll({'divider': divider.value});
    if (dividerLight != null) {
      result.addAll({'dividerLight': dividerLight!.value});
    }
    if (dividerDark != null) {
      result.addAll({'dividerDark': dividerDark!.value});
    }
    if (onDivider != null) {
      result.addAll({'onDivider': onDivider!.value});
    }
    result.addAll({'disabled': disabled.value});
    if (disabledLight != null) {
      result.addAll({'disabledLight': disabledLight!.value});
    }
    if (disabledDark != null) {
      result.addAll({'disabledDark': disabledDark!.value});
    }
    if (onDisabled != null) {
      result.addAll({'onDisabled': onDisabled!.value});
    }
    result.addAll({'negative': negative.value});
    if (negativeLight != null) {
      result.addAll({'negativeLight': negativeLight!.value});
    }
    if (negativeDark != null) {
      result.addAll({'negativeDark': negativeDark!.value});
    }
    if (onNegative != null) {
      result.addAll({'onNegative': onNegative!.value});
    }
    result.addAll({'positive': positive.value});
    if (positiveLight != null) {
      result.addAll({'positiveLight': positiveLight!.value});
    }
    if (positiveDark != null) {
      result.addAll({'positiveDark': positiveDark!.value});
    }
    if (onPositive != null) {
      result.addAll({'onPositive': onPositive!.value});
    }
    result.addAll({'warning': warning.value});
    if (warningLight != null) {
      result.addAll({'warningLight': warningLight!.value});
    }
    if (warningDark != null) {
      result.addAll({'warningDark': warningDark!.value});
    }
    if (onWarning != null) {
      result.addAll({'onWarning': onWarning!.value});
    }
    result.addAll({'ok': ok.value});
    if (okLight != null) {
      result.addAll({'okLight': okLight!.value});
    }
    if (okDark != null) {
      result.addAll({'okDark': okDark!.value});
    }
    if (onOk != null) {
      result.addAll({'onOk': onOk!.value});
    }
    result.addAll({'error': error.value});
    if (errorLight != null) {
      result.addAll({'errorLight': errorLight!.value});
    }
    if (errorDark != null) {
      result.addAll({'errorDark': errorDark!.value});
    }
    if (onError != null) {
      result.addAll({'onError': onError!.value});
    }
    if (secondary != null) {
      result.addAll({'secondary': secondary!.value});
    }
    if (secondaryDark != null) {
      result.addAll({'secondaryDark': secondaryDark!.value});
    }
    if (secondaryLight != null) {
      result.addAll({'secondaryLight': secondaryLight!.value});
    }
    if (onSecondary != null) {
      result.addAll({'onSecondary': onSecondary!.value});
    }
    // if (primarySwatch != null) {
    //   result.addAll({'primarySwatch': primarySwatch!.toMap()});
    // }

    return result;
  }

  factory ThemeColors.fromMap(Map<String, dynamic> map) {
    return ThemeColors(
      primary: Color(map['primary']),
      primaryDark: Color(map['primaryDark']),
      primaryLight: Color(map['primaryLight']),
      onPrimary: map['onPrimary'] != null ? Color(map['onPrimary']) : null,
      background: Color(map['background']),
      onBackground:
          map['onBackground'] != null ? Color(map['onBackground']) : null,
      surface: Color(map['surface']),
      onSurface: map['onSurface'] != null ? Color(map['onSurface']) : null,
      text: Color(map['text']),
      textLight: map['textLight'] != null ? Color(map['textLight']) : null,
      textDark: map['textDark'] != null ? Color(map['textDark']) : null,
      onText: map['onText'] != null ? Color(map['onText']) : null,
      divider: Color(map['divider']),
      dividerLight:
          map['dividerLight'] != null ? Color(map['dividerLight']) : null,
      dividerDark:
          map['dividerDark'] != null ? Color(map['dividerDark']) : null,
      onDivider: map['onDivider'] != null ? Color(map['onDivider']) : null,
      disabled: Color(map['disabled']),
      disabledLight:
          map['disabledLight'] != null ? Color(map['disabledLight']) : null,
      disabledDark:
          map['disabledDark'] != null ? Color(map['disabledDark']) : null,
      onDisabled: map['onDisabled'] != null ? Color(map['onDisabled']) : null,
      negative: Color(map['negative']),
      negativeLight:
          map['negativeLight'] != null ? Color(map['negativeLight']) : null,
      negativeDark:
          map['negativeDark'] != null ? Color(map['negativeDark']) : null,
      onNegative: map['onNegative'] != null ? Color(map['onNegative']) : null,
      positive: Color(map['positive']),
      positiveLight:
          map['positiveLight'] != null ? Color(map['positiveLight']) : null,
      positiveDark:
          map['positiveDark'] != null ? Color(map['positiveDark']) : null,
      onPositive: map['onPositive'] != null ? Color(map['onPositive']) : null,
      warning: Color(map['warning']),
      warningLight:
          map['warningLight'] != null ? Color(map['warningLight']) : null,
      warningDark:
          map['warningDark'] != null ? Color(map['warningDark']) : null,
      onWarning: map['onWarning'] != null ? Color(map['onWarning']) : null,
      ok: Color(map['ok']),
      okLight: map['okLight'] != null ? Color(map['okLight']) : null,
      okDark: map['okDark'] != null ? Color(map['okDark']) : null,
      onOk: map['onOk'] != null ? Color(map['onOk']) : null,
      error: Color(map['error']),
      errorLight: map['errorLight'] != null ? Color(map['errorLight']) : null,
      errorDark: map['errorDark'] != null ? Color(map['errorDark']) : null,
      onError: map['onError'] != null ? Color(map['onError']) : null,
      secondary: map['secondary'] != null ? Color(map['secondary']) : null,
      secondaryDark:
          map['secondaryDark'] != null ? Color(map['secondaryDark']) : null,
      secondaryLight:
          map['secondaryLight'] != null ? Color(map['secondaryLight']) : null,
      onSecondary:
          map['onSecondary'] != null ? Color(map['onSecondary']) : null,
      // primarySwatch: map['primarySwatch'] != null
      //     ? MaterialColor.fromMap(map['primarySwatch'])
      //     : null,
    );
  }

  ThemeColors copyWith({
    Color? primary,
    Color? primaryDark,
    Color? primaryLight,
    Color? onPrimary,
    Color? background,
    Color? onBackground,
    Color? surface,
    Color? onSurface,
    Color? text,
    Color? textLight,
    Color? textDark,
    Color? onText,
    Color? divider,
    Color? dividerLight,
    Color? dividerDark,
    Color? onDivider,
    Color? disabled,
    Color? disabledLight,
    Color? disabledDark,
    Color? onDisabled,
    Color? negative,
    Color? negativeLight,
    Color? negativeDark,
    Color? onNegative,
    Color? positive,
    Color? positiveLight,
    Color? positiveDark,
    Color? onPositive,
    Color? warning,
    Color? warningLight,
    Color? warningDark,
    Color? onWarning,
    Color? ok,
    Color? okLight,
    Color? okDark,
    Color? onOk,
    Color? error,
    Color? errorLight,
    Color? errorDark,
    Color? onError,
    Color? secondary,
    Color? secondaryDark,
    Color? secondaryLight,
    Color? onSecondary,
    MaterialColor? primarySwatch,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      primaryDark: primaryDark ?? this.primaryDark,
      primaryLight: primaryLight ?? this.primaryLight,
      onPrimary: onPrimary ?? this.onPrimary,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      text: text ?? this.text,
      textLight: textLight ?? this.textLight,
      textDark: textDark ?? this.textDark,
      onText: onText ?? this.onText,
      divider: divider ?? this.divider,
      dividerLight: dividerLight ?? this.dividerLight,
      dividerDark: dividerDark ?? this.dividerDark,
      onDivider: onDivider ?? this.onDivider,
      disabled: disabled ?? this.disabled,
      disabledLight: disabledLight ?? this.disabledLight,
      disabledDark: disabledDark ?? this.disabledDark,
      onDisabled: onDisabled ?? this.onDisabled,
      negative: negative ?? this.negative,
      negativeLight: negativeLight ?? this.negativeLight,
      negativeDark: negativeDark ?? this.negativeDark,
      onNegative: onNegative ?? this.onNegative,
      positive: positive ?? this.positive,
      positiveLight: positiveLight ?? this.positiveLight,
      positiveDark: positiveDark ?? this.positiveDark,
      onPositive: onPositive ?? this.onPositive,
      warning: warning ?? this.warning,
      warningLight: warningLight ?? this.warningLight,
      warningDark: warningDark ?? this.warningDark,
      onWarning: onWarning ?? this.onWarning,
      ok: ok ?? this.ok,
      okLight: okLight ?? this.okLight,
      okDark: okDark ?? this.okDark,
      onOk: onOk ?? this.onOk,
      error: error ?? this.error,
      errorLight: errorLight ?? this.errorLight,
      errorDark: errorDark ?? this.errorDark,
      onError: onError ?? this.onError,
      secondary: secondary ?? this.secondary,
      secondaryDark: secondaryDark ?? this.secondaryDark,
      secondaryLight: secondaryLight ?? this.secondaryLight,
      onSecondary: onSecondary ?? this.onSecondary,
      primarySwatch: primarySwatch ?? this.primarySwatch,
    );
  }

  String toJson() => json.encode(toMap());

  factory ThemeColors.fromJson(String source) =>
      ThemeColors.fromMap(json.decode(source));
}


// if want use negative color:
// context.colors.negative

//If want use negative text style: 
// context.colors.negative.body
// context.colors.negative.body.bold
// context.colors.negative.body.medium
// context.colors.negative.body.


