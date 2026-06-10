import 'package:flutter_utils/flutter_utils.dart';

extension TextStyleUtilsExt on TextStyle? {
  TextStyle? get thin => this?.copyWith(fontWeight: FontWeight.w100);
  TextStyle? get extraLight => this?.copyWith(fontWeight: FontWeight.w200);
  TextStyle? get light => this?.copyWith(fontWeight: FontWeight.w300);
  TextStyle? get regular => this?.copyWith(fontWeight: FontWeight.w400);
  TextStyle? get medium => this?.copyWith(fontWeight: FontWeight.w500);
  TextStyle? get semiBold => this?.copyWith(fontWeight: FontWeight.w600);
  TextStyle? get bold => this?.copyWith(fontWeight: FontWeight.w700);
  TextStyle? get extraBold => this?.copyWith(fontWeight: FontWeight.w800);
  TextStyle? get black => this?.copyWith(fontWeight: FontWeight.w900);

  List<TextStyle> get weights => [
        thin,
        extraLight,
        light,
        regular,
        medium,
        semiBold,
        bold,
        extraBold,
        black,
      ].nonNulls.toList();

  TextStyle? get italic => this?.copyWith(fontStyle: FontStyle.italic);
  TextStyle? get underline =>
      this?.copyWith(decoration: TextDecoration.underline);
  TextStyle? get lineThrough =>
      this?.copyWith(decoration: TextDecoration.lineThrough);

  TextStyle? plusSize(double? plus) =>
      this?.copyWith(fontSize: (this?.fontSize ?? 0) + (plus ?? 0));

  TextStyle? withColor(Color color) => this?.copyWith(color: color);

  TextStyle? buildSize(double Function(double size) size) {
    return this?.copyWith(fontSize: size(this?.fontSize ?? 0));
  }
}
