import 'package:flutter_utils/flutter_utils.dart';

extension TextStyleUtilsExt on TextStyle {
  TextStyle get light => copyWith(fontWeight: FontWeight.w200);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get black => copyWith(fontWeight: FontWeight.w900);

  List<TextStyle> get weights => [
        light,
        regular,
        medium,
        bold,
        black,
      ].nonNulls.toList();

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  TextStyle plusSize(double? plus) =>
      copyWith(fontSize: (fontSize ?? 0) + (plus ?? 0));
}
