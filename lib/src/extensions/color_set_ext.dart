import 'package:flutter_utils/flutter_utils.dart';

extension ColorSetExt on ColorSet {
  ColorOn? lightIf(bool condition) {
    if (condition) return light;
    return dark;
  }

  ColorOn? darkIf(bool condition) {
    if (condition) return dark;
    return light;
  }

  ColorOn? of(BuildContext context) {
    return context.theme.darkMode ? dark : light;
  }
}
