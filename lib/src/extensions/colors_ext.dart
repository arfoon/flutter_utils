import '../utils.dart';

extension ColorUtilsMainExt on Color {
  String get hex => '#${value.toRadixString(16)}';

  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}

extension ColorNullableExt on Color? {
  /// Returns a copy of this color with the given opacity (0.0 to 1.0).
  Color? opacityOf(double opacity) {
    return this?.withAlpha((opacity * 255).round());
  }

  Border? border({double width = 1, BorderStyle? style, double? strokeAlign}) =>
      this == null
          ? null
          : Border.all(
              color: this!,
              width: width,
              style: style ?? BorderStyle.solid,
              strokeAlign: strokeAlign ?? BorderSide.strokeAlignOutside,
            );

  bool get isDark => (this?.computeLuminance() ?? 0.0) < 0.5;
  bool get isLight => (this?.computeLuminance() ?? 0.0) >= 0.5;

  ColorSet? get toSet =>
      this == null ? null : ColorSet(this!.toARGB32(), on: null);

  Color? when(bool when, Color? color) => when ? color : this;
}
