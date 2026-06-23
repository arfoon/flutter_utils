import 'package:flutter_utils/flutter_utils.dart';

class Radiuses {
  //! Mini 4
  static const double xmini = 2;
  static const double mini = 4;

  //! Tiny 8
  static const double tiny = 8;
  static const double tinyMini = tiny + mini; // 12
  static const double tinyXMini = tiny + xmini; // 10

  //! Small 14
  static const double small = 14;
  static const double smallXMini = small + xmini; // 16
  static const double smallMini = small + mini; // 18
  static const double smallTiny = small + tiny; // 22
  static const double smallMedium = small + medium; // 26

  //! Medium 20
  static const double medium = 20;
  static const double mediumMini = medium + mini; // 24
  static const double mediumTiny = medium + tiny; // 28
  static const double mediumSmall = medium + small; // 30

  //! Large 32
  static const double large = 32;
  static const double largeMini = large + mini; // 36
  static const double largeTiny = large + tiny; // 40
  static const double largeSmall = large + small; // 44
  static const double largeMedium = large + medium; // 48
  static const double xlarge = 64;
  static const double xxlarge = 128;

  static Radius zero = const Radius.circular(0);
  static BorderRadius circle = BorderRadius.circular(100);

  //! Mini 4
  static Radius xminiRadius = const Radius.circular(xmini);
  static Radius miniRadius = const Radius.circular(mini);

  //! Tiny 8
  static Radius tinyRadius = const Radius.circular(tiny);
  static Radius tinyMiniRadius = const Radius.circular(tinyMini);
  static Radius tinyXMiniRadius = const Radius.circular(tinyXMini);

  //! Small 14
  static Radius smallRadius = const Radius.circular(small);
  static Radius smallXMiniRadius = const Radius.circular(smallXMini);
  static Radius smallMiniRadius = const Radius.circular(smallMini);
  static Radius smallTinyRadius = const Radius.circular(smallTiny);
  static Radius smallMediumRadius = const Radius.circular(smallMedium);

  //! Medium 20
  static Radius mediumRadius = const Radius.circular(medium);
  static Radius mediumMiniRadius = const Radius.circular(mediumMini);
  static Radius mediumTinyRadius = const Radius.circular(mediumTiny);
  static Radius mediumSmallRadius = const Radius.circular(mediumSmall);

  //! Large 32
  static Radius largeRadius = const Radius.circular(large);
  static Radius largeMiniRadius = const Radius.circular(largeMini);
  static Radius largeTinyRadius = const Radius.circular(largeTiny);
  static Radius largeSmallRadius = const Radius.circular(largeSmall);
  static Radius largeMediumRadius = const Radius.circular(largeMedium);
  static Radius xlargeRadius = const Radius.circular(xlarge);
  static Radius xxlargeRadius = const Radius.circular(xxlarge);
  static Radius circleRadius = const Radius.circular(100);

  //! Mini 4
  static BorderRadius xminiCircle = BorderRadius.circular(xmini);
  static BorderRadius miniCircle = BorderRadius.circular(mini);

  //! Tiny 8
  static BorderRadius tinyCircle = BorderRadius.circular(tiny);
  static BorderRadius tinyMiniCircle = BorderRadius.circular(tinyMini);
  static BorderRadius tinyXMiniCircle = BorderRadius.circular(tinyXMini);

  //! Small 14
  static BorderRadius smallCircle = BorderRadius.circular(small);
  static BorderRadius smallXMiniCircle = BorderRadius.circular(smallXMini);
  static BorderRadius smallMiniCircle = BorderRadius.circular(smallMini);
  static BorderRadius smallTinyCircle = BorderRadius.circular(smallTiny);
  static BorderRadius smallMediumCircle = BorderRadius.circular(smallMedium);

  //! Medium 20
  static BorderRadius mediumCircle = BorderRadius.circular(medium);
  static BorderRadius mediumMiniCircle = BorderRadius.circular(mediumMini);
  static BorderRadius mediumTinyCircle = BorderRadius.circular(mediumTiny);
  static BorderRadius mediumSmallCircle = BorderRadius.circular(mediumSmall);

  //! Large 32
  static BorderRadius largeCircle = BorderRadius.circular(large);
  static BorderRadius largeMiniCircle = BorderRadius.circular(largeMini);
  static BorderRadius largeTinyCircle = BorderRadius.circular(largeTiny);
  static BorderRadius largeSmallCircle = BorderRadius.circular(largeSmall);
  static BorderRadius largeMediumCircle = BorderRadius.circular(largeMedium);
  static BorderRadius xlargeCircle = BorderRadius.circular(xlarge);
  static BorderRadius xxlargeCircle = BorderRadius.circular(xxlarge);

  //! Mini 4
  static BorderRadius xminiRadiusTop = BorderRadius.vertical(top: xminiRadius);
  static BorderRadius miniRadiusTop = BorderRadius.vertical(top: miniRadius);

  //! Tiny 8
  static BorderRadius tinyRadiusTop = BorderRadius.vertical(top: tinyRadius);
  static BorderRadius tinyMiniRadiusTop =
      BorderRadius.vertical(top: tinyMiniRadius);
  static BorderRadius tinyXMiniRadiusTop =
      BorderRadius.vertical(top: tinyXMiniRadius);

  //! Small 14
  static BorderRadius smallRadiusTop = BorderRadius.vertical(top: smallRadius);
  static BorderRadius smallXMiniRadiusTop =
      BorderRadius.vertical(top: smallXMiniRadius);
  static BorderRadius smallMiniRadiusTop =
      BorderRadius.vertical(top: smallMiniRadius);
  static BorderRadius smallTinyRadiusTop =
      BorderRadius.vertical(top: smallTinyRadius);
  static BorderRadius smallMediumRadiusTop =
      BorderRadius.vertical(top: smallMediumRadius);

  //! Medium 20
  static BorderRadius mediumRadiusTop =
      BorderRadius.vertical(top: mediumRadius);
  static BorderRadius mediumMiniRadiusTop =
      BorderRadius.vertical(top: mediumMiniRadius);
  static BorderRadius mediumTinyRadiusTop =
      BorderRadius.vertical(top: mediumTinyRadius);
  static BorderRadius mediumSmallRadiusTop =
      BorderRadius.vertical(top: mediumSmallRadius);

  //! Large 32
  static BorderRadius largeRadiusTop = BorderRadius.vertical(top: largeRadius);
  static BorderRadius largeMiniRadiusTop =
      BorderRadius.vertical(top: largeMiniRadius);
  static BorderRadius largeTinyRadiusTop =
      BorderRadius.vertical(top: largeTinyRadius);
  static BorderRadius largeSmallRadiusTop =
      BorderRadius.vertical(top: largeSmallRadius);
  static BorderRadius largeMediumRadiusTop =
      BorderRadius.vertical(top: largeMediumRadius);
  static BorderRadius xlargeRadiusTop =
      BorderRadius.vertical(top: xlargeRadius);
  static BorderRadius xxlargeRadiusTop =
      BorderRadius.vertical(top: xxlargeRadius);

  //! Mini 4
  static BorderRadius xminiRadiusBottom =
      BorderRadius.vertical(bottom: xminiRadius);
  static BorderRadius miniRadiusBottom =
      BorderRadius.vertical(bottom: miniRadius);

  //! Tiny 8
  static BorderRadius tinyRadiusBottom =
      BorderRadius.vertical(bottom: tinyRadius);
  static BorderRadius tinyMiniRadiusBottom =
      BorderRadius.vertical(bottom: tinyMiniRadius);
  static BorderRadius tinyXMiniRadiusBottom =
      BorderRadius.vertical(bottom: tinyXMiniRadius);

  //! Small 14
  static BorderRadius smallRadiusBottom =
      BorderRadius.vertical(bottom: smallRadius);
  static BorderRadius smallXMiniRadiusBottom =
      BorderRadius.vertical(bottom: smallXMiniRadius);
  static BorderRadius smallMiniRadiusBottom =
      BorderRadius.vertical(bottom: smallMiniRadius);
  static BorderRadius smallTinyRadiusBottom =
      BorderRadius.vertical(bottom: smallTinyRadius);
  static BorderRadius smallMediumRadiusBottom =
      BorderRadius.vertical(bottom: smallMediumRadius);

  //! Medium 20
  static BorderRadius mediumRadiusBottom =
      BorderRadius.vertical(bottom: mediumRadius);
  static BorderRadius mediumMiniRadiusBottom =
      BorderRadius.vertical(bottom: mediumMiniRadius);
  static BorderRadius mediumTinyRadiusBottom =
      BorderRadius.vertical(bottom: mediumTinyRadius);
  static BorderRadius mediumSmallRadiusBottom =
      BorderRadius.vertical(bottom: mediumSmallRadius);

  //! Large 32
  static BorderRadius largeRadiusBottom =
      BorderRadius.vertical(bottom: largeRadius);
  static BorderRadius largeMiniRadiusBottom =
      BorderRadius.vertical(bottom: largeMiniRadius);
  static BorderRadius largeTinyRadiusBottom =
      BorderRadius.vertical(bottom: largeTinyRadius);
  static BorderRadius largeSmallRadiusBottom =
      BorderRadius.vertical(bottom: largeSmallRadius);
  static BorderRadius largeMediumRadiusBottom =
      BorderRadius.vertical(bottom: largeMediumRadius);
  static BorderRadius xlargeRadiusBottom =
      BorderRadius.vertical(bottom: xlargeRadius);
  static BorderRadius xxlargeRadiusBottom =
      BorderRadius.vertical(bottom: xxlargeRadius);

  static BorderRadius circular(double radius) => BorderRadius.circular(radius);

  static BorderRadius only({
    Radius? all,
    Radius top = Radius.zero,
    Radius bottom = Radius.zero,
    Radius left = Radius.zero,
    Radius right = Radius.zero,
    Radius start = Radius.zero,
    Radius end = Radius.zero,
    Radius? bottomStart,
    Radius? bottomEnd,
    Radius? topStart,
    Radius? topEnd,
    TextDirection? textDirection,
  }) {
    final direction = textDirection ??
        (Locales.selectedLocaleRtl ? TextDirection.rtl : TextDirection.ltr);
    final base = all ?? Radius.zero;

    var topLeft = base;
    var topRight = base;
    var bottomLeft = base;
    var bottomRight = base;

    if (top != Radius.zero) {
      topLeft = top;
      topRight = top;
    }
    if (bottom != Radius.zero) {
      bottomLeft = bottom;
      bottomRight = bottom;
    }
    if (left != Radius.zero) {
      topLeft = left;
      bottomLeft = left;
    }
    if (right != Radius.zero) {
      topRight = right;
      bottomRight = right;
    }
    if (start != Radius.zero) {
      if (direction == TextDirection.ltr) {
        topLeft = start;
        bottomLeft = start;
      } else {
        topRight = start;
        bottomRight = start;
      }
    }
    if (end != Radius.zero) {
      if (direction == TextDirection.ltr) {
        topRight = end;
        bottomRight = end;
      } else {
        topLeft = end;
        bottomLeft = end;
      }
    }
    if (topStart != null) {
      if (direction == TextDirection.ltr) {
        topLeft = topStart;
      } else {
        topRight = topStart;
      }
    }
    if (topEnd != null) {
      if (direction == TextDirection.ltr) {
        topRight = topEnd;
      } else {
        topLeft = topEnd;
      }
    }
    if (bottomStart != null) {
      if (direction == TextDirection.ltr) {
        bottomLeft = bottomStart;
      } else {
        bottomRight = bottomStart;
      }
    }
    if (bottomEnd != null) {
      if (direction == TextDirection.ltr) {
        bottomRight = bottomEnd;
      } else {
        bottomLeft = bottomEnd;
      }
    }

    return BorderRadius.only(
      topLeft: topLeft,
      topRight: topRight,
      bottomLeft: bottomLeft,
      bottomRight: bottomRight,
    );
  }
}

// extension DoubleRadiusExt on double {
//   Radius get radius => Radius.circular(this);
//   BorderRadius get circle => BorderRadius.circular(this);
//   BorderRadius get radiusTop => BorderRadius.vertical(top: radius);
//   BorderRadius get radiusBottom => BorderRadius.vertical(bottom: radius);
//   BorderRadius get radiusLeft => BorderRadius.horizontal(left: radius);
//   BorderRadius get radiusRight => BorderRadius.horizontal(right: radius);
//   BorderRadius get radiusStart => Radiuses.only(start: radius);
//   BorderRadius get radiusEnd => Radiuses.only(end: radius);
// }

extension BorderRadiusExt on BorderRadius {
  RoundedRectangleBorder roundedRectangleBorder({
    BorderSide side = BorderSide.none,
  }) {
    return RoundedRectangleBorder(side: side, borderRadius: this);
  }

  ContinuousRectangleBorder continuousRectangleBorder({
    BorderSide side = BorderSide.none,
  }) {
    return ContinuousRectangleBorder(side: side, borderRadius: this);
  }

  BeveledRectangleBorder beveledRectangleBorder({
    BorderSide side = BorderSide.none,
  }) {
    return BeveledRectangleBorder(side: side, borderRadius: this);
  }
}
