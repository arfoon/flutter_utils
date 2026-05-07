import 'package:flutter_utils/flutter_utils.dart';
import 'package:flutter_utils/src/app_theme/text_style/text_sizes.dart';

extension ColorUtilsStyleExt on Color {
  TextStyle? get overline => TextSizes.instance.overline.copyWith(color: this);
  TextStyle? get caption => TextSizes.instance.caption.copyWith(color: this);
  TextStyle? get label => TextSizes.instance.label.copyWith(color: this);
  TextStyle? get body => TextSizes.instance.body.copyWith(color: this);
  TextStyle? get title => TextSizes.instance.title.copyWith(color: this);
  TextStyle? get headline => TextSizes.instance.headline.copyWith(color: this);
  TextStyle? get display => TextSizes.instance.display.copyWith(color: this);
  TextStyle? get head => TextSizes.instance.head.copyWith(color: this);

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
