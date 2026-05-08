// import 'dart:convert';

// import 'package:flutter/material.dart';

// class ThemeColors {
//   final ThemeMode themeMode;

//   final Color primary;
//   final Color primaryDark;
//   final Color primaryLight;
//   final Color? onPrimary;

//   final Color? secondary;
//   final Color? secondaryDark;
//   final Color? secondaryLight;
//   final Color? onSecondary;

//   final Color background;
//   final Color? backgroundDark;
//   final Color? backgroundLight;
//   final Color? onBackground;

//   final Color surface;
//   final Color? surfaceDark;
//   final Color? surfaceLight;
//   final Color? onSurface;

//   final Color text;
//   final Color? textLight;
//   final Color? textDark;
//   final Color? onText;

//   final Color divider;
//   final Color? dividerLight;
//   final Color? dividerDark;
//   final Color? onDivider;

//   final Color disabled;
//   final Color? disabledLight;
//   final Color? disabledDark;
//   final Color? onDisabled;

//   final Color negative;
//   final Color? negativeLight;
//   final Color? negativeDark;
//   final Color? onNegative;

//   final Color positive;
//   final Color? positiveLight;
//   final Color? positiveDark;
//   final Color? onPositive;

//   final Color warning;
//   final Color? warningLight;
//   final Color? warningDark;
//   final Color? onWarning;

//   final Color ok;
//   final Color? okLight;
//   final Color? okDark;
//   final Color? onOk;

//   final Color error;
//   final Color? errorLight;
//   final Color? errorDark;
//   final Color? onError;

//   final MaterialColor? primarySwatch;

//   const ThemeColors({
//     required this.primary,
//     required this.primaryDark,
//     required this.primaryLight,
//     required this.background,
//     this.backgroundDark,
//     this.backgroundLight,
//     required this.surface,
//     this.surfaceDark,
//     this.surfaceLight,
//     required this.text,
//     this.textLight,
//     this.textDark,
//     required this.disabled,
//     this.disabledLight,
//     this.disabledDark,
//     required this.divider,
//     this.dividerLight,
//     this.dividerDark,
//     this.secondary,
//     this.secondaryDark,
//     this.secondaryLight,
//     required this.negative,
//     this.negativeLight,
//     this.negativeDark,
//     required this.positive,
//     this.positiveLight,
//     this.positiveDark,
//     required this.warning,
//     this.warningLight,
//     this.warningDark,
//     required this.ok,
//     this.okLight,
//     this.okDark,
//     required this.error,
//     this.errorLight,
//     this.errorDark,
//     this.primarySwatch,
//     this.onPrimary,
//     this.onBackground,
//     this.onSurface,
//     this.onText,
//     this.onDivider,
//     this.onDisabled,
//     this.onNegative,
//     this.onPositive,
//     this.onWarning,
//     this.onOk,
//     this.onError,
//     this.onSecondary,
//     required this.themeMode,
//   });

//   Map<String, dynamic> toMap() {
//     final result = <String, dynamic>{};

//     result['themeMode'] = themeMode.name;
//     result['primary'] = primary.value;
//     result['primaryDark'] = primaryDark.value;
//     result['primaryLight'] = primaryLight.value;
//     if (onPrimary != null) result['onPrimary'] = onPrimary!.value;

//     result['background'] = background.value;
//     if (backgroundDark != null)
//       result['backgroundDark'] = backgroundDark!.value;
//     if (backgroundLight != null)
//       result['backgroundLight'] = backgroundLight!.value;
//     if (onBackground != null) result['onBackground'] = onBackground!.value;

//     result['surface'] = surface.value;
//     if (surfaceDark != null) result['surfaceDark'] = surfaceDark!.value;
//     if (surfaceLight != null) result['surfaceLight'] = surfaceLight!.value;
//     if (onSurface != null) result['onSurface'] = onSurface!.value;

//     result['text'] = text.value;
//     if (textLight != null) result['textLight'] = textLight!.value;
//     if (textDark != null) result['textDark'] = textDark!.value;
//     if (onText != null) result['onText'] = onText!.value;

//     result['divider'] = divider.value;
//     if (dividerLight != null) result['dividerLight'] = dividerLight!.value;
//     if (dividerDark != null) result['dividerDark'] = dividerDark!.value;
//     if (onDivider != null) result['onDivider'] = onDivider!.value;

//     result['disabled'] = disabled.value;
//     if (disabledLight != null) result['disabledLight'] = disabledLight!.value;
//     if (disabledDark != null) result['disabledDark'] = disabledDark!.value;
//     if (onDisabled != null) result['onDisabled'] = onDisabled!.value;

//     result['negative'] = negative.value;
//     if (negativeLight != null) result['negativeLight'] = negativeLight!.value;
//     if (negativeDark != null) result['negativeDark'] = negativeDark!.value;
//     if (onNegative != null) result['onNegative'] = onNegative!.value;

//     result['positive'] = positive.value;
//     if (positiveLight != null) result['positiveLight'] = positiveLight!.value;
//     if (positiveDark != null) result['positiveDark'] = positiveDark!.value;
//     if (onPositive != null) result['onPositive'] = onPositive!.value;

//     result['warning'] = warning.value;
//     if (warningLight != null) result['warningLight'] = warningLight!.value;
//     if (warningDark != null) result['warningDark'] = warningDark!.value;
//     if (onWarning != null) result['onWarning'] = onWarning!.value;

//     result['ok'] = ok.value;
//     if (okLight != null) result['okLight'] = okLight!.value;
//     if (okDark != null) result['okDark'] = okDark!.value;
//     if (onOk != null) result['onOk'] = onOk!.value;

//     result['error'] = error.value;
//     if (errorLight != null) result['errorLight'] = errorLight!.value;
//     if (errorDark != null) result['errorDark'] = errorDark!.value;
//     if (onError != null) result['onError'] = onError!.value;

//     if (secondary != null) result['secondary'] = secondary!.value;
//     if (secondaryDark != null) result['secondaryDark'] = secondaryDark!.value;
//     if (secondaryLight != null)
//       result['secondaryLight'] = secondaryLight!.value;
//     if (onSecondary != null) result['onSecondary'] = onSecondary!.value;

//     // if (primarySwatch != null) {
//     //   result['primarySwatch'] = ... // Serialization code here when ready
//     // }

//     return result;
//   }

//   factory ThemeColors.fromMap(Map<String, dynamic> map) {
//     Color? toColor(dynamic val) => val != null ? Color(val) : null;

//     return ThemeColors(
//       themeMode: ThemeMode.values.firstWhere((e) => e.name == map['themeMode']),
//       primary: Color(map['primary']),
//       primaryDark: Color(map['primaryDark']),
//       primaryLight: Color(map['primaryLight']),
//       onPrimary: toColor(map['onPrimary']),
//       background: Color(map['background']),
//       backgroundDark: toColor(map['backgroundDark']),
//       backgroundLight: toColor(map['backgroundLight']),
//       onBackground: toColor(map['onBackground']),
//       surface: Color(map['surface']),
//       surfaceDark: toColor(map['surfaceDark']),
//       surfaceLight: toColor(map['surfaceLight']),
//       onSurface: toColor(map['onSurface']),
//       text: Color(map['text']),
//       textLight: toColor(map['textLight']),
//       textDark: toColor(map['textDark']),
//       onText: toColor(map['onText']),
//       divider: Color(map['divider']),
//       dividerLight: toColor(map['dividerLight']),
//       dividerDark: toColor(map['dividerDark']),
//       onDivider: toColor(map['onDivider']),
//       disabled: Color(map['disabled']),
//       disabledLight: toColor(map['disabledLight']),
//       disabledDark: toColor(map['disabledDark']),
//       onDisabled: toColor(map['onDisabled']),
//       negative: Color(map['negative']),
//       negativeLight: toColor(map['negativeLight']),
//       negativeDark: toColor(map['negativeDark']),
//       onNegative: toColor(map['onNegative']),
//       positive: Color(map['positive']),
//       positiveLight: toColor(map['positiveLight']),
//       positiveDark: toColor(map['positiveDark']),
//       onPositive: toColor(map['onPositive']),
//       warning: Color(map['warning']),
//       warningLight: toColor(map['warningLight']),
//       warningDark: toColor(map['warningDark']),
//       onWarning: toColor(map['onWarning']),
//       ok: Color(map['ok']),
//       okLight: toColor(map['okLight']),
//       okDark: toColor(map['okDark']),
//       onOk: toColor(map['onOk']),
//       error: Color(map['error']),
//       errorLight: toColor(map['errorLight']),
//       errorDark: toColor(map['errorDark']),
//       onError: toColor(map['onError']),
//       secondary: toColor(map['secondary']),
//       secondaryDark: toColor(map['secondaryDark']),
//       secondaryLight: toColor(map['secondaryLight']),
//       onSecondary: toColor(map['onSecondary']),
//       primarySwatch: null,
//     );
//   }

//   ThemeColors copyWith({
//     ThemeMode? themeMode,
//     Color? primary,
//     Color? primaryDark,
//     Color? primaryLight,
//     Color? onPrimary,
//     Color? background,
//     Color? backgroundDark,
//     Color? backgroundLight,
//     Color? onBackground,
//     Color? surface,
//     Color? surfaceDark,
//     Color? surfaceLight,
//     Color? onSurface,
//     Color? text,
//     Color? textLight,
//     Color? textDark,
//     Color? onText,
//     Color? divider,
//     Color? dividerLight,
//     Color? dividerDark,
//     Color? onDivider,
//     Color? disabled,
//     Color? disabledLight,
//     Color? disabledDark,
//     Color? onDisabled,
//     Color? negative,
//     Color? negativeLight,
//     Color? negativeDark,
//     Color? onNegative,
//     Color? positive,
//     Color? positiveLight,
//     Color? positiveDark,
//     Color? onPositive,
//     Color? warning,
//     Color? warningLight,
//     Color? warningDark,
//     Color? onWarning,
//     Color? ok,
//     Color? okLight,
//     Color? okDark,
//     Color? onOk,
//     Color? error,
//     Color? errorLight,
//     Color? errorDark,
//     Color? onError,
//     Color? secondary,
//     Color? secondaryDark,
//     Color? secondaryLight,
//     Color? onSecondary,
//     MaterialColor? primarySwatch,
//   }) {
//     return ThemeColors(
//       themeMode: themeMode ?? this.themeMode,
//       primary: primary ?? this.primary,
//       primaryDark: primaryDark ?? this.primaryDark,
//       primaryLight: primaryLight ?? this.primaryLight,
//       onPrimary: onPrimary ?? this.onPrimary,
//       background: background ?? this.background,
//       backgroundDark: backgroundDark ?? this.backgroundDark,
//       backgroundLight: backgroundLight ?? this.backgroundLight,
//       onBackground: onBackground ?? this.onBackground,
//       surface: surface ?? this.surface,
//       surfaceDark: surfaceDark ?? this.surfaceDark,
//       surfaceLight: surfaceLight ?? this.surfaceLight,
//       onSurface: onSurface ?? this.onSurface,
//       text: text ?? this.text,
//       textLight: textLight ?? this.textLight,
//       textDark: textDark ?? this.textDark,
//       onText: onText ?? this.onText,
//       divider: divider ?? this.divider,
//       dividerLight: dividerLight ?? this.dividerLight,
//       dividerDark: dividerDark ?? this.dividerDark,
//       onDivider: onDivider ?? this.onDivider,
//       disabled: disabled ?? this.disabled,
//       disabledLight: disabledLight ?? this.disabledLight,
//       disabledDark: disabledDark ?? this.disabledDark,
//       onDisabled: onDisabled ?? this.onDisabled,
//       negative: negative ?? this.negative,
//       negativeLight: negativeLight ?? this.negativeLight,
//       negativeDark: negativeDark ?? this.negativeDark,
//       onNegative: onNegative ?? this.onNegative,
//       positive: positive ?? this.positive,
//       positiveLight: positiveLight ?? this.positiveLight,
//       positiveDark: positiveDark ?? this.positiveDark,
//       onPositive: onPositive ?? this.onPositive,
//       warning: warning ?? this.warning,
//       warningLight: warningLight ?? this.warningLight,
//       warningDark: warningDark ?? this.warningDark,
//       onWarning: onWarning ?? this.onWarning,
//       ok: ok ?? this.ok,
//       okLight: okLight ?? this.okLight,
//       okDark: okDark ?? this.okDark,
//       onOk: onOk ?? this.onOk,
//       error: error ?? this.error,
//       errorLight: errorLight ?? this.errorLight,
//       errorDark: errorDark ?? this.errorDark,
//       onError: onError ?? this.onError,
//       secondary: secondary ?? this.secondary,
//       secondaryDark: secondaryDark ?? this.secondaryDark,
//       secondaryLight: secondaryLight ?? this.secondaryLight,
//       onSecondary: onSecondary ?? this.onSecondary,
//       primarySwatch: primarySwatch ?? this.primarySwatch,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory ThemeColors.fromJson(String source) =>
//       ThemeColors.fromMap(json.decode(source));
// }
