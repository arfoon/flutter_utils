import 'package:flutter/material.dart';

class Radiuses {
  static const double large = 24;
  static const double medium = 18;
  static const double small = 6;
  static const double mini = 4;

  static Radius zero = const Radius.circular(0);
  static Radius largeRadius = const Radius.circular(large);
  static Radius mediumRadius = const Radius.circular(medium);
  static Radius smallRadius = const Radius.circular(small);
  static Radius miniRadius = const Radius.circular(mini);
  static Radius circleRadius = const Radius.circular(100);

  static BorderRadius circular(double radius) => BorderRadius.circular(radius);
  static BorderRadius only({
    Radius top = Radius.zero,
    Radius bottom = Radius.zero,
    Radius left = Radius.zero,
    Radius right = Radius.zero,
  }) =>
      left != Radius.zero || right != Radius.zero
          ? BorderRadius.horizontal(
              left: left,
              right: right,
            )
          : BorderRadius.vertical(
              top: top,
              bottom: bottom,
            );

  static BorderRadius largeCircle = BorderRadius.circular(large);
  static BorderRadius mediumCircle = BorderRadius.circular(medium);
  static BorderRadius smallCircle = BorderRadius.circular(small);
  static BorderRadius miniCircle = BorderRadius.circular(mini);
  static BorderRadius circle = BorderRadius.circular(100);

  static BorderRadius smallRadiusTop = BorderRadius.vertical(top: smallRadius);
  static BorderRadius miniRadiusTop = BorderRadius.vertical(top: miniRadius);
  static BorderRadius mediumRadiusTop =
      BorderRadius.vertical(top: mediumRadius);
  static BorderRadius largeRadiusTop = BorderRadius.vertical(top: largeRadius);

  static BorderRadius smallRadiusBottom =
      BorderRadius.vertical(bottom: smallRadius);
  static BorderRadius miniRadiusBottom =
      BorderRadius.vertical(bottom: miniRadius);
  static BorderRadius mediumRadiusBottom =
      BorderRadius.vertical(bottom: mediumRadius);
  static BorderRadius largeRadiusBottom =
      BorderRadius.vertical(bottom: largeRadius);
}
