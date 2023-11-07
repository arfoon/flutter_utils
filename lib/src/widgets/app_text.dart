import 'package:flutter_utils/flutter_utils.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.data, {
    this.style,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.width,
    Key? key,
    this.margin,
  }) : super(key: key);
  final String? data;
  final TextStyle? style;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    if (data == null) return const SizedBox.shrink();

    final style = this.style ?? DefaultTextStyle.of(context).style;
    bool isEnglish = data!.isEnglishWord;

    Widget child = Text(
      data!,
      style: style.copyWith(
        fontFamily:
            isEnglish ? context.theme.fontFamily : context.theme.localFont,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
    );

    if (width != null) {
      child = SizedBox(
        width: width,
        child: child,
      );
    }
    if (margin != null) {
      child = Padding(
        padding: margin!,
        child: child,
      );
    }

    return child;
  }
}
