import 'package:flutter/material.dart';

extension TextStyleExt on TextStyle {
  TextStyle plusSize(double? plus) =>
      copyWith(fontSize: (fontSize ?? 0) + (plus ?? 0));
}
