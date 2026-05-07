import 'package:flutter_utils/flutter_utils.dart';
import 'package:flutter_utils/src/app_theme/text_style/text_sizes.dart';

extension ColorUtilsExt on Color {
  TextStyle? get overline => TextSizes.instance.overline;
  TextStyle? get caption => TextSizes.instance.caption;
  TextStyle? get label => TextSizes.instance.label;
  TextStyle? get body => TextSizes.instance.body;
  TextStyle? get title => TextSizes.instance.title;
  TextStyle? get headline => TextSizes.instance.headline;
  TextStyle? get display => TextSizes.instance.display;
  TextStyle? get head => TextSizes.instance.head;

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
