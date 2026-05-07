import 'package:flutter_utils/flutter_utils.dart';

extension ColorUtilsStyleExt on Color {
  TextStyle? get overline => TextSizes.instance.overline.regular;
  TextStyle? get caption => TextSizes.instance.caption.regular;
  TextStyle? get label => TextSizes.instance.label.regular;
  TextStyle? get body => TextSizes.instance.body.regular;
  TextStyle? get title => TextSizes.instance.title.regular;
  TextStyle? get headline => TextSizes.instance.headline.regular;
  TextStyle? get display => TextSizes.instance.display.regular;
  TextStyle? get head => TextSizes.instance.head.regular;

  List<TextStyle> get styles => [
        overline,
        caption,
        label,
        body,
        title,
        headline,
        display,
        head,
      ].nonNulls.toList();
}
