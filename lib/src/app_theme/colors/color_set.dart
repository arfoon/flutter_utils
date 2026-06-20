import 'package:flutter/material.dart';
import 'package:flutter_utils/src/app_theme/colors/color_on.dart';

class ColorSet extends ColorOn {
  final String? key;
  final ColorOn? dark;
  final ColorOn? light;

  const ColorSet(
    int argb, {
    super.on,
    this.dark,
    this.light,
    this.key,
  }) : super(argb);

  @override
  ColorSet copyWith({
    int? argb,
    Color? on,
    ColorOn? dark,
    ColorOn? light,
    String? key,
  }) {
    return ColorSet(
      argb ?? this.argb,
      on: on ?? this.on,
      dark: dark ?? this.dark,
      light: light ?? this.light,
      key: key ?? this.key,
    );
  }

  static ColorSet? lerp(ColorSet? a, ColorSet? b, double t) {
    if (a == null && b == null) return null;
    return ColorSet(
      Color.lerp(a, b, t)?.toARGB32() ?? 0,
      on: Color.lerp(a?.on, b?.on, t),
      dark: ColorOn.lerp(a?.dark, b?.dark, t),
      light: ColorOn.lerp(a?.light, b?.light, t),
      key: a?.key ?? b?.key,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ColorSet) return false;
    return argb == other.argb &&
        key == other.key &&
        on == other.on &&
        dark == other.dark &&
        light == other.light;
  }

  @override
  int get hashCode => Object.hash(argb, key, on, dark, light);

  @override
  String toString() =>
      'ColorSet(key: $key, argb: $argb, on: $on, dark: $dark, light: $light)';

  @override
  Map<String, dynamic> toJson() {
    return {
      if (key != null) 'key': key,
      'argb': argb,
      'on': on?.toARGB32(),
      'dark': dark?.toJson(),
      'light': light?.toJson(),
    };
  }

  factory ColorSet.fromJson(Map<String, dynamic> json) {
    return ColorSet(
      json['argb'] as int,
      key: json['key'] as String?,
      on: json['on'] != null ? Color(json['on'] as int) : null,
      dark: json['dark'] != null
          ? ColorOn.fromJson(json['dark'] as Map<String, dynamic>)
          : null,
      light: json['light'] != null
          ? ColorOn.fromJson(json['light'] as Map<String, dynamic>)
          : null,
    );
  }
}
