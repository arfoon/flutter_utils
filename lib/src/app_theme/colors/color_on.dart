import 'package:flutter/material.dart';

class ColorOn extends Color {
  final int argb;
  final int? on;
  const ColorOn(this.argb, {this.on}) : super(argb);

  ColorOn copyWith({
    int? argb,
    int? on,
  }) {
    return ColorOn(
      argb ?? this.argb,
      on: on ?? this.on,
    );
  }

  static ColorOn? lerp(ColorOn? a, ColorOn? b, double t) {
    if (a == null && b == null) return null;
    return ColorOn(
      Color.lerp(a, b, t)?.toARGB32() ?? 0,
      on: Color.lerp(
        a?.on != null ? Color(a!.on!) : null,
        b?.on != null ? Color(b!.on!) : null,
        t,
      )?.toARGB32(),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ColorOn) return false;
    return argb == other.argb && on == other.on;
  }

  @override
  int get hashCode => Object.hash(argb, on);

  @override
  String toString() => 'ColorOn(argb: $argb, on: $on)';

  Map<String, dynamic> toJson() {
    return {
      'argb': argb,
      'on': on,
    };
  }

  factory ColorOn.fromJson(Map<String, dynamic> json) {
    return ColorOn(
      json['argb'] as int,
      on: json['on'] as int?,
    );
  }
}
