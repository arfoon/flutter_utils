import 'package:flutter_utils/flutter_utils.dart';

class TextSizes {
  static var instance = const TextSizes(
    overline: TextStyle(fontSize: 8),
    caption: TextStyle(fontSize: 10),
    label: TextStyle(fontSize: 12),
    body: TextStyle(fontSize: 14),
    subtitle: TextStyle(fontSize: 16),
    title: TextStyle(fontSize: 18),
    header: TextStyle(fontSize: 20),
    headline: TextStyle(fontSize: 24),
    display: TextStyle(fontSize: 28),
    head: TextStyle(fontSize: 32),
  );

  static TextSizes init(TextSizes? textSizes) {
    if (textSizes != null) {
      return textSizes.withFontFamily(textSizes.fontFamily);
    } else {
      return TextSizes.instance;
    }
  }

  final String? fontFamily;

  final TextStyle overline;
  final TextStyle caption;
  final TextStyle label;
  final TextStyle body;
  final TextStyle subtitle;
  final TextStyle title;
  final TextStyle header;
  final TextStyle headline;
  final TextStyle display;
  final TextStyle head;

  const TextSizes({
    this.fontFamily,
    required this.overline,
    required this.caption,
    required this.label,
    required this.body,
    required this.subtitle,
    required this.title,
    required this.header,
    required this.headline,
    required this.display,
    required this.head,
  });

  TextSizes withFontFamily(String? fontFamily) {
    return TextSizes(
      fontFamily: fontFamily ?? this.fontFamily,
      overline: overline.copyWith(fontFamily: fontFamily),
      caption: caption.copyWith(fontFamily: fontFamily),
      label: label.copyWith(fontFamily: fontFamily),
      body: body.copyWith(fontFamily: fontFamily),
      subtitle: subtitle.copyWith(fontFamily: fontFamily),
      title: title.copyWith(fontFamily: fontFamily),
      header: header.copyWith(fontFamily: fontFamily),
      headline: headline.copyWith(fontFamily: fontFamily),
      display: display.copyWith(fontFamily: fontFamily),
      head: head.copyWith(fontFamily: fontFamily),
    );
  }

  TextTheme textTheme(Color color) {
    return TextTheme(
      displayLarge: TextSizes.instance.display,
      displayMedium: TextSizes.instance.display,
      displaySmall: TextSizes.instance.display,
      headlineMedium: TextSizes.instance.headline,
      headlineSmall: TextSizes.instance.headline,
      titleLarge: TextSizes.instance.title,
      titleMedium: TextSizes.instance.title,
      titleSmall: TextSizes.instance.title,
      bodyLarge: TextSizes.instance.body,
      bodyMedium: TextSizes.instance.body,
      bodySmall: TextSizes.instance.body,
      labelSmall: TextSizes.instance.label,
    ).apply(
      decorationColor: color,
      bodyColor: color,
      displayColor: color,
    );
  }
}
