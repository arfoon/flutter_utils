import 'package:flutter/material.dart';
import 'package:flutter_utils/src/app_theme/colors/colors.dart';

class AppColors {
  final ThemeMode theme;

  final ColorSet primary;
  final ColorSet secondary;

  final ColorSet background;
  final ColorSet surface;

  final ColorSet text;
  final ColorSet divider;
  final ColorSet disabled;

  final ColorSet error;
  final ColorSet negative;
  final ColorSet positive;

  final ColorSet warning;
  final ColorSet ok;

  final MaterialColor? swatch;

  final List<ColorSet>? extras;

  const AppColors({
    required this.primary,
    required this.background,
    required this.surface,
    required this.text,
    required this.disabled,
    required this.divider,
    required this.secondary,
    required this.negative,
    required this.positive,
    required this.warning,
    required this.ok,
    required this.error,
    this.swatch,
    this.extras,
    required this.theme,
  });

  ColorSet value(double? value, {bool isBalance = false}) {
    value ??= 0;
    if (value == 0) return disabled;
    return value < 0 ? negative : (isBalance ? text : positive);
  }

  ColorSet positiveIf(bool b) => b ? positive : negative;
  ColorSet negativeIf(bool b) => b ? negative : positive;
  ColorSet warningIf(bool when) => when ? warning : text;

  ColorSet _keyed(ColorSet color, String key) =>
      color.key == null ? color.copyWith(key: key) : color;

  List<ColorSet> get list => [
        _keyed(primary, 'primary'),
        _keyed(secondary, 'secondary'),
        _keyed(background, 'background'),
        _keyed(surface, 'surface'),
        _keyed(text, 'text'),
        _keyed(divider, 'divider'),
        _keyed(disabled, 'disabled'),
        _keyed(error, 'error'),
        _keyed(negative, 'negative'),
        _keyed(positive, 'positive'),
        _keyed(warning, 'warning'),
        _keyed(ok, 'ok'),
        ...?extras,
      ];

  AppColors copyWith({
    ThemeMode? theme,
    ColorSet? primary,
    ColorSet? secondary,
    ColorSet? background,
    ColorSet? surface,
    ColorSet? text,
    ColorSet? divider,
    ColorSet? disabled,
    ColorSet? error,
    ColorSet? negative,
    ColorSet? positive,
    ColorSet? warning,
    ColorSet? ok,
    MaterialColor? swatch,
  }) {
    return AppColors(
      theme: theme ?? this.theme,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      text: text ?? this.text,
      divider: divider ?? this.divider,
      disabled: disabled ?? this.disabled,
      error: error ?? this.error,
      negative: negative ?? this.negative,
      positive: positive ?? this.positive,
      warning: warning ?? this.warning,
      ok: ok ?? this.ok,
      swatch: swatch ?? this.swatch,
    );
  }

  static AppColors lerp(AppColors a, AppColors b, double t) {
    return AppColors(
      theme: t < 0.5 ? a.theme : b.theme,
      primary: ColorSet.lerp(a.primary, b.primary, t)!,
      secondary: ColorSet.lerp(a.secondary, b.secondary, t)!,
      background: ColorSet.lerp(a.background, b.background, t)!,
      surface: ColorSet.lerp(a.surface, b.surface, t)!,
      text: ColorSet.lerp(a.text, b.text, t)!,
      divider: ColorSet.lerp(a.divider, b.divider, t)!,
      disabled: ColorSet.lerp(a.disabled, b.disabled, t)!,
      error: ColorSet.lerp(a.error, b.error, t)!,
      negative: ColorSet.lerp(a.negative, b.negative, t)!,
      positive: ColorSet.lerp(a.positive, b.positive, t)!,
      warning: ColorSet.lerp(a.warning, b.warning, t)!,
      ok: ColorSet.lerp(a.ok, b.ok, t)!,
      swatch: t < 0.5 ? a.swatch : b.swatch,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppColors) return false;
    return theme == other.theme &&
        primary == other.primary &&
        secondary == other.secondary &&
        background == other.background &&
        surface == other.surface &&
        text == other.text &&
        divider == other.divider &&
        disabled == other.disabled &&
        error == other.error &&
        negative == other.negative &&
        positive == other.positive &&
        warning == other.warning &&
        ok == other.ok &&
        swatch == other.swatch;
  }

  @override
  int get hashCode => Object.hashAll([
        theme,
        primary,
        secondary,
        background,
        surface,
        text,
        divider,
        disabled,
        error,
        negative,
        positive,
        warning,
        ok,
        swatch,
      ]);

  @override
  String toString() {
    return 'AppColors(theme: $theme, primary: $primary, secondary: $secondary, ...)';
  }

  Map<String, dynamic> toJson() {
    return {
      'theme': theme.index,
      'primary': primary.toJson(),
      'secondary': secondary.toJson(),
      'background': background.toJson(),
      'surface': surface.toJson(),
      'text': text.toJson(),
      'divider': divider.toJson(),
      'disabled': disabled.toJson(),
      'error': error.toJson(),
      'negative': negative.toJson(),
      'positive': positive.toJson(),
      'warning': warning.toJson(),
      'ok': ok.toJson(),
      // MaterialColor swatch is tricky to serialize directly, usually handled separately or ignored
    };
  }

  factory AppColors.fromJson(Map<String, dynamic> json) {
    return AppColors(
      theme: ThemeMode.values[json['theme'] as int],
      primary: ColorSet.fromJson(json['primary'] as Map<String, dynamic>),
      secondary: ColorSet.fromJson(json['secondary'] as Map<String, dynamic>),
      background: ColorSet.fromJson(json['background'] as Map<String, dynamic>),
      surface: ColorSet.fromJson(json['surface'] as Map<String, dynamic>),
      text: ColorSet.fromJson(json['text'] as Map<String, dynamic>),
      divider: ColorSet.fromJson(json['divider'] as Map<String, dynamic>),
      disabled: ColorSet.fromJson(json['disabled'] as Map<String, dynamic>),
      error: ColorSet.fromJson(json['error'] as Map<String, dynamic>),
      negative: ColorSet.fromJson(json['negative'] as Map<String, dynamic>),
      positive: ColorSet.fromJson(json['positive'] as Map<String, dynamic>),
      warning: ColorSet.fromJson(json['warning'] as Map<String, dynamic>),
      ok: ColorSet.fromJson(json['ok'] as Map<String, dynamic>),
    );
  }
}
