import 'package:flutter/widgets.dart';

class SelectText extends StatelessWidget {
  final String text;
  final List<String> selects;
  final TextStyle? style;
  final TextStyle? selectStyle;
  final TextAlign textAlign;
  final bool caseSensitive;

  const SelectText({
    super.key,
    required this.text,
    this.selects = const [],
    this.style,
    this.selectStyle,
    this.textAlign = TextAlign.start,
    this.caseSensitive = true,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = style ?? DefaultTextStyle.of(context).style;
    final bStyle =
        selectStyle ?? baseStyle.copyWith(fontWeight: FontWeight.w600);

    if (selects.isEmpty) {
      return Text(text, style: baseStyle, textAlign: textAlign);
    }

    // Build a single RegExp that matches any of the bold words.
    final pattern = selects.map(RegExp.escape).join('|');
    final regExp = RegExp(pattern, caseSensitive: caseSensitive);
    final matches = regExp.allMatches(text).toList();

    if (matches.isEmpty) {
      return Text(text, style: baseStyle, textAlign: textAlign);
    }

    final spans = <TextSpan>[];
    int lastIndex = 0;
    for (final match in matches) {
      if (match.start > lastIndex) {
        spans.add(
          TextSpan(
            text: text.substring(lastIndex, match.start),
            style: baseStyle,
          ),
        );
      }
      spans.add(
        TextSpan(text: text.substring(match.start, match.end), style: bStyle),
      );
      lastIndex = match.end;
    }
    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex), style: baseStyle));
    }

    return RichText(
      textAlign: textAlign,
      text: TextSpan(style: baseStyle, children: spans),
    );
  }
}
