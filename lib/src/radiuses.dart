import 'package:flutter_utils/flutter_utils.dart';

class Radiuses {
  //! Mini 4
  static const double xmini = 2;
  static const double mini = 4;

  //! Small 6
  static const double small = 6;
  static const double smallMini = small + mini; // 10

  //! Tiny 8
  static const double tiny = 8;
  static const double tinyMini = tiny + mini; // 12

  //! Medium 18
  static const double medium = 18;

  //! Large 24
  static const double large = 24;
  static const double xlarge = 32;
  static const double xxlarge = 48;

  static Radius zero = const Radius.circular(0);
  static BorderRadius circle = BorderRadius.circular(100);

  static Radius xminiRadius = const Radius.circular(xmini);
  static Radius miniRadius = const Radius.circular(mini);
  static Radius smallRadius = const Radius.circular(small);
  static Radius smallMiniRadius = const Radius.circular(smallMini);
  static Radius tinyRadius = const Radius.circular(tiny);
  static Radius tinyMiniRadius = const Radius.circular(tinyMini);
  static Radius mediumRadius = const Radius.circular(medium);
  static Radius largeRadius = const Radius.circular(large);
  static Radius xlargeRadius = const Radius.circular(xlarge);
  static Radius xxlargeRadius = const Radius.circular(xxlarge);
  static Radius circleRadius = const Radius.circular(100);

  static BorderRadius xminiCircle = BorderRadius.circular(xmini);
  static BorderRadius miniCircle = BorderRadius.circular(mini);
  static BorderRadius smallCircle = BorderRadius.circular(small);
  static BorderRadius smallMiniCircle = BorderRadius.circular(smallMini);
  static BorderRadius tinyCircle = BorderRadius.circular(tiny);
  static BorderRadius tinyMiniCircle = BorderRadius.circular(tinyMini);
  static BorderRadius mediumCircle = BorderRadius.circular(medium);
  static BorderRadius largeCircle = BorderRadius.circular(large);
  static BorderRadius xlargeCircle = BorderRadius.circular(xlarge);
  static BorderRadius xxlargeCircle = BorderRadius.circular(xxlarge);

  static BorderRadius xminiRadiusTop = BorderRadius.vertical(top: xminiRadius);
  static BorderRadius miniRadiusTop = BorderRadius.vertical(top: miniRadius);
  static BorderRadius smallRadiusTop = BorderRadius.vertical(top: smallRadius);
  static BorderRadius smallMiniRadiusTop =
      BorderRadius.vertical(top: smallMiniRadius);
  static BorderRadius tinyRadiusTop = BorderRadius.vertical(top: tinyRadius);
  static BorderRadius tinyMiniRadiusTop =
      BorderRadius.vertical(top: tinyMiniRadius);
  static BorderRadius mediumRadiusTop =
      BorderRadius.vertical(top: mediumRadius);
  static BorderRadius largeRadiusTop = BorderRadius.vertical(top: largeRadius);
  static BorderRadius xlargeRadiusTop =
      BorderRadius.vertical(top: xlargeRadius);
  static BorderRadius xxlargeRadiusTop =
      BorderRadius.vertical(top: xxlargeRadius);

  static BorderRadius xminiRadiusBottom =
      BorderRadius.vertical(bottom: xminiRadius);
  static BorderRadius miniRadiusBottom =
      BorderRadius.vertical(bottom: miniRadius);
  static BorderRadius smallRadiusBottom =
      BorderRadius.vertical(bottom: smallRadius);
  static BorderRadius smallMiniRadiusBottom =
      BorderRadius.vertical(bottom: smallMiniRadius);
  static BorderRadius tinyRadiusBottom =
      BorderRadius.vertical(bottom: tinyRadius);
  static BorderRadius tinyMiniRadiusBottom =
      BorderRadius.vertical(bottom: tinyMiniRadius);
  static BorderRadius mediumRadiusBottom =
      BorderRadius.vertical(bottom: mediumRadius);
  static BorderRadius largeRadiusBottom =
      BorderRadius.vertical(bottom: largeRadius);
  static BorderRadius xlargeRadiusBottom =
      BorderRadius.vertical(bottom: xlargeRadius);
  static BorderRadius xxlargeRadiusBottom =
      BorderRadius.vertical(bottom: xxlargeRadius);

  static BorderRadius circular(double radius) => BorderRadius.circular(radius);
  static BorderRadius only({
    Radius top = Radius.zero,
    Radius bottom = Radius.zero,
    Radius left = Radius.zero,
    Radius right = Radius.zero,
    Radius start = Radius.zero,
    Radius end = Radius.zero,
  }) {
    if (start != Radius.zero || end != Radius.zero) {
      return BorderRadiusDirectional.horizontal(
        start: start,
        end: end,
      ).resolve(
          Locales.selectedLocaleRtl ? TextDirection.rtl : TextDirection.ltr);
    }
    return left != Radius.zero || right != Radius.zero
        ? BorderRadius.horizontal(
            left: left,
            right: right,
          )
        : BorderRadius.vertical(
            top: top,
            bottom: bottom,
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
