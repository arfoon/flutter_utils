import 'package:flutter_utils/flutter_utils.dart';

extension ColorUtilsStyleExt on Color {
  TextStyle? get overline =>
      TextSizes.instance.overline.regular.withColor(this);
  TextStyle? get caption => TextSizes.instance.caption.regular.withColor(this);
  TextStyle? get label => TextSizes.instance.label.regular.withColor(this);
  TextStyle? get body => TextSizes.instance.body.regular.withColor(this);
  TextStyle? get subtitle =>
      TextSizes.instance.subtitle.regular.withColor(this);
  TextStyle? get title => TextSizes.instance.title.regular.withColor(this);
  TextStyle? get header => TextSizes.instance.header.regular.withColor(this);
  TextStyle? get headline =>
      TextSizes.instance.headline.regular.withColor(this);
  TextStyle? get display => TextSizes.instance.display.regular.withColor(this);
  TextStyle? get head => TextSizes.instance.head.regular.withColor(this);

  List<TextStyle> get styles => [
        overline,
        caption,
        label,
        body,
        subtitle,
        title,
        header,
        headline,
        display,
        head,
      ].nonNulls.toList();
}
