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

extension ColorOpacityExt on Color? {
  /// Returns a copy of this color with the given opacity (0.0 to 1.0).
  Color? opacityOf(double opacity) {
    return this?.withAlpha((opacity * 255).round());
  }
}
