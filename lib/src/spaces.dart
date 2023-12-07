import 'package:flutter_utils/flutter_utils.dart';

class Spaces {
  static const double xmini = 2;
  static const double mini = 4;
  static const double tiny = 8;
  static const double tinyMini = tiny + mini;
  static const double small = 16;
  static const double smallTiny = small + tiny;
  static const double medium = 32;
  static const double large = 48;
  static const double xlarge = 64;
  static const double xxlarge = 128;

  static const miniHeight = SizedBox(height: mini);
  static const xminiHeight = SizedBox(height: mini / 2);
  static const tinyHeight = SizedBox(height: tiny);
  static const tinyMiniHeight = SizedBox(height: tinyMini);
  static const smallHeight = SizedBox(height: small);
  static const smallTinyHeight = SizedBox(height: smallTiny);
  static const mediumHeight = SizedBox(height: medium);
  static const largeHeight = SizedBox(height: large);
  static const xlargeHeight = SizedBox(height: xlarge);
  static const xxlargeHeight = SizedBox(height: xxlarge);

  static const miniWidth = SizedBox(width: mini);
  static const xminiWidth = SizedBox(width: mini / 2);
  static const tinyWidth = SizedBox(width: tiny);
  static const tinyMiniWidth = SizedBox(width: tinyMini);
  static const mediumWidth = SizedBox(width: medium);
  static const smallWidth = SizedBox(width: small);
  static const smallTinyWidth = SizedBox(width: smallTiny);
  static const largeWidth = SizedBox(width: large);
  static const xlargeWidth = SizedBox(width: xlarge);
  static const xxlargeWidth = SizedBox(width: xxlarge);

  static const EdgeInsets zero = EdgeInsets.zero;
  static const EdgeInsets miniAll = EdgeInsets.all(mini);
  static const EdgeInsets tinyAll = EdgeInsets.all(tiny);
  static const EdgeInsets tinyMiniAll = EdgeInsets.all(tinyMini);
  static const EdgeInsets smallAll = EdgeInsets.all(small);
  static const EdgeInsets smallTinyAll = EdgeInsets.all(smallTiny);
  static const EdgeInsets mediumAll = EdgeInsets.all(medium);
  static const EdgeInsets largeAll = EdgeInsets.all(large);
  static const EdgeInsets xlargeAll = EdgeInsets.all(xlarge);

  static const EdgeInsets miniHorizontal =
      EdgeInsets.symmetric(horizontal: mini);
  static const EdgeInsets tinyHorizontal =
      EdgeInsets.symmetric(horizontal: tiny);
  static const EdgeInsets tinyMiniHorizontal =
      EdgeInsets.symmetric(horizontal: tinyMini);
  static const EdgeInsets smallHorizontal =
      EdgeInsets.symmetric(horizontal: small);
  static const EdgeInsets smallTinyHorizontal =
      EdgeInsets.symmetric(horizontal: smallTiny);
  static const EdgeInsets mediumHorizontal =
      EdgeInsets.symmetric(horizontal: medium);
  static const EdgeInsets largeHorizontal =
      EdgeInsets.symmetric(horizontal: large);
  static const EdgeInsets xlargeHorizontal =
      EdgeInsets.symmetric(horizontal: xlarge);

  static const EdgeInsets miniVertical = EdgeInsets.symmetric(vertical: mini);
  static const EdgeInsets xminiVertical = EdgeInsets.symmetric(vertical: xmini);
  static const EdgeInsets tinyVertical = EdgeInsets.symmetric(vertical: tiny);
  static const EdgeInsets tinyMiniVertical =
      EdgeInsets.symmetric(vertical: tinyMini);
  static const EdgeInsets smallVertical = EdgeInsets.symmetric(vertical: small);
  static const EdgeInsets smallTinyVertical =
      EdgeInsets.symmetric(vertical: smallTiny);
  static const EdgeInsets mediumVertical =
      EdgeInsets.symmetric(vertical: medium);
  static const EdgeInsets largeVertical = EdgeInsets.symmetric(vertical: large);
  static const EdgeInsets xlargeVertical =
      EdgeInsets.symmetric(vertical: xlarge);

  static const EdgeInsets miniLeft = EdgeInsets.only(left: mini);
  static const EdgeInsets tinyLeft = EdgeInsets.only(left: tiny);
  static const EdgeInsets tinyMiniLeft = EdgeInsets.only(left: tinyMini);
  static const EdgeInsets smallLeft = EdgeInsets.only(left: small);
  static const EdgeInsets mediumLeft = EdgeInsets.only(left: medium);
  static const EdgeInsets largeLeft = EdgeInsets.only(left: large);
  static const EdgeInsets xlargeLeft = EdgeInsets.only(left: xlarge);

  static const EdgeInsets miniRight = EdgeInsets.only(right: mini);
  static const EdgeInsets tinyRight = EdgeInsets.only(right: tiny);
  static const EdgeInsets tinyMiniRight = EdgeInsets.only(right: tinyMini);
  static const EdgeInsets smallRight = EdgeInsets.only(right: small);
  static const EdgeInsets mediumRight = EdgeInsets.only(right: medium);
  static const EdgeInsets largeRight = EdgeInsets.only(right: large);
  static const EdgeInsets xlargeRight = EdgeInsets.only(right: xlarge);

  static EdgeInsets get miniStart => Spaces.only(start: mini);
  static EdgeInsets get tinyStart => Spaces.only(start: tiny);
  static EdgeInsets get tinyMiniStart => Spaces.only(start: tinyMini);
  static EdgeInsets get smallStart => Spaces.only(start: small);
  static EdgeInsets get mediumStart => Spaces.only(start: medium);
  static EdgeInsets get largeStart => Spaces.only(start: large);
  static EdgeInsets get xlargeStart => Spaces.only(start: xlarge);

  static EdgeInsets get miniEnd => Spaces.only(end: mini);
  static EdgeInsets get tinyEnd => Spaces.only(end: tiny);
  static EdgeInsets get tinyMiniEnd => Spaces.only(end: tinyMini);
  static EdgeInsets get smallEnd => Spaces.only(end: small);
  static EdgeInsets get mediumEnd => Spaces.only(end: medium);
  static EdgeInsets get largeEnd => Spaces.only(end: large);
  static EdgeInsets get xlargeEnd => Spaces.only(end: xlarge);

  static const EdgeInsets miniBottom = EdgeInsets.only(bottom: mini);
  static const EdgeInsets tinyBottom = EdgeInsets.only(bottom: tiny);
  static const EdgeInsets tinyMiniBottom = EdgeInsets.only(bottom: tinyMini);
  static const EdgeInsets smallBottom = EdgeInsets.only(bottom: small);
  static const EdgeInsets mediumBottom = EdgeInsets.only(bottom: medium);
  static const EdgeInsets largeBottom = EdgeInsets.only(bottom: large);
  static const EdgeInsets xlargeBottom = EdgeInsets.only(bottom: xlarge);

  static const EdgeInsets miniTop = EdgeInsets.only(top: mini);
  static const EdgeInsets xminiTop = EdgeInsets.only(top: xmini);
  static const EdgeInsets tinyTop = EdgeInsets.only(top: tiny);
  static const EdgeInsets tinyMiniTop = EdgeInsets.only(top: tinyMini);
  static const EdgeInsets smallTop = EdgeInsets.only(top: small);
  static const EdgeInsets mediumTop = EdgeInsets.only(top: medium);
  static const EdgeInsets largeTop = EdgeInsets.only(top: large);
  static const EdgeInsets xlargeTop = EdgeInsets.only(top: xlarge);

  static const EdgeInsets button =
      EdgeInsets.symmetric(horizontal: Spaces.medium, vertical: Spaces.tiny);

  static EdgeInsets ofKeyboard(context) => EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      );

  static double? bottomOfKeyboard(context) {
    var bottom = MediaQuery.of(context).viewInsets.bottom;
    if (bottom == 0) return null;
    return bottom;
  }

  static EdgeInsets only({
    double? left,
    double? right,
    double? top,
    double? bottom,
    double? horizontal,
    double? vertical,
    double? start,
    double? end,
    double? all,
  }) {
    EdgeInsets insets = const EdgeInsets.only();
    if (all != null) {
      insets = EdgeInsets.all(all);
    }
    if (horizontal != null || vertical != null) {
      insets = EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );
    }
    insets = insets.copyWith(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
    );
    if (start != null) {
      insets = insets.copyWith(
        left: Locales.selectedLocaleRtl ? null : start,
        right: !Locales.selectedLocaleRtl ? null : start,
      );
    }
    if (end != null) {
      insets = insets.copyWith(
        left: !Locales.selectedLocaleRtl ? null : end,
        right: Locales.selectedLocaleRtl ? null : end,
      );
    }
    return insets;
  }
}
