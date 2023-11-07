import 'package:flutter_utils/flutter_utils.dart';

class AppBadge extends StatelessWidget {
  const AppBadge(
    this.text, {
    Key? key,
    this.color,
    this.prefix,
    this.margin,
    this.suffix,
    this.style,
    this.padding,
    this.outlined = false,
    this.textColor,
    this.fillColor,
    this.onTap,
    this.expandText = false,
    this.borderColor,
    this.filled = false,
    this.tooltip,
    this.minWidth,
    this.maxWidth,
    this.maxLines,
  }) : super(key: key);

  final dynamic text;
  final Color? color;
  final Widget? prefix, suffix;
  final EdgeInsets? margin, padding;
  final TextStyle? style;
  final bool outlined;
  final Color? textColor, fillColor, borderColor;
  final Function? onTap;
  final bool expandText, filled;
  final String? tooltip;
  final double? minWidth, maxWidth;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    if (text == null) return const SizedBox.shrink();
    final color = this.color ?? context.theme.primaryColor;

    return AppTooltip(
      tooltip: tooltip,
      child: AppCard(
        onTap: onTap,
        borderRadius: Radiuses.miniCircle,
        minWidth: minWidth,
        maxWidth: maxWidth,
        color: filled
            ? color
            : (outlined
                ? (fillColor ?? context.theme.backgroundColor)
                : (fillColor ?? (color).withOpacity(.09))),
        padding: padding ?? Spaces.only(vertical: 3, horizontal: 6),
        margin: margin,
        border: context.theme.border(
            color:
                borderColor ?? (outlined ? color : (color).withOpacity(.09))),
        child: maxWidth != null
            ? _buildText(context, color)
            : Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (prefix != null) prefix!,
                  ExpandedWhen(
                    when: expandText,
                    child: _buildText(context, color),
                  ),
                  if (suffix != null) suffix!,
                ],
              ),
      ),
    );
  }

  AppText _buildText(BuildContext context, Color color) {
    return AppText(
      text.toString(),
      style: (style ?? context.theme.textThemeOf(color).caption2).copyWith(
        color: textColor ?? (filled ? Colors.white : color),
      ),
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
