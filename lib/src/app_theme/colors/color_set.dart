import 'package:flutter/material.dart';
import 'package:flutter_utils/src/app_theme/colors/color_on.dart';

class ColorSet extends Color {
  final int? on;
  final ColorOn? dark;
  final ColorOn? light;

  ColorOn get main => ColorOn(toARGB32(), on: on);

  const ColorSet(
    int argb, {
    this.on,
    this.dark,
    this.light,
  }) : super(argb);

  ColorSet copyWith({
    int? argb,
    int? on,
    ColorOn? dark,
    ColorOn? light,
  }) {
    return ColorSet(
      argb ?? toARGB32(),
      on: on ?? this.on,
      dark: dark ?? this.dark,
      light: light ?? this.light,
    );
  }

  static ColorSet? lerp(ColorSet? a, ColorSet? b, double t) {
    if (a == null && b == null) return null;
    return ColorSet(
      Color.lerp(a, b, t)?.toARGB32() ?? 0,
      on: Color.lerp(
        a?.on != null ? Color(a!.on!) : null,
        b?.on != null ? Color(b!.on!) : null,
        t,
      )?.toARGB32(),
      dark: ColorOn.lerp(a?.dark, b?.dark, t),
      light: ColorOn.lerp(a?.light, b?.light, t),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ColorSet) return false;
    return toARGB32() == other.toARGB32() &&
        on == other.on &&
        dark == other.dark &&
        light == other.light;
  }

  @override
  int get hashCode => Object.hash(toARGB32(), on, dark, light);

  @override
  String toString() => 'ColorSet(argb: ${toARGB32()}, on: $on, dark: $dark, light: $light)';
}
