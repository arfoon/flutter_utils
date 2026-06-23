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

extension ListColorSetExt on List<ColorSet> {
  ColorSet? ofKey(String key) {
    return where((e) => e.key == key).firstOrNull;
  }

  ColorSet? forId(int? id) {
    if (id == null) return null;
    if (id.isNegative) id = id.abs();

    var list = this;

    if (list.isEmpty) return null;
    if (list.length == 1) return list.first;

    while (id! > list.length - 1) {
      id = (id / 2).toInt();
    }

    return list[id];
  }
}
