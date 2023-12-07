
import 'package:flutter_utils/flutter_utils.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.width,
    this.padding,
    this.margin,
    this.order,
    this.color,
    this.style,
    this.suffix,
    this.prefix,
    this.outlined = false,
    this.loading = false,
    this.height,
    this.tooltip,
    this.fillColor,
    this.borderColor,
    this.localize = true,
    this.center = true,
    this.loadingText,
    this.prefixIcon,
    this.iconMargin,
    this.prefixIconSize,
    this.loaderSize,
    this.canHover = true,
    this.hoverText,
    this.textColor,
    this.minWidth,
    this.expandedText = false,
    this.small = false,
    this.rotateIcon,
    this.textHoverColor,
    this.suffixIcon,
    this.suffixIconSize,
    this.localizeLoadingText,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String text;
  final String? loadingText;
  final double? width, height, minWidth;
  final EdgeInsets? padding, margin;
  final double? order, prefixIconSize, loaderSize, suffixIconSize;
  final Color? color;
  final TextStyle? style;
  final Widget? suffix, prefix;
  final FocusNode focusNode = FocusNode();
  final bool outlined;
  final bool loading;
  final String? tooltip, hoverText;
  final Color? fillColor, borderColor, textColor, textHoverColor;
  final bool localize;
  final bool center, canHover;
  final SvgData? prefixIcon, suffixIcon;
  final EdgeInsets? iconMargin;
  final bool expandedText, small;
  final int? rotateIcon;
  final bool? localizeLoadingText;

  @override
  Widget build(BuildContext context) {
    Widget child = HoverBuilder(
      enable: canHover && onTap != null,
      builder: (hover) {
        final color =
            this.color ?? (style?.color ?? context.theme.primaryColor);

        var textStyle = style?.copyWith(
              color: (hover || !outlined
                  ? (textHoverColor ?? context.colors.background)
                  : color),
            ) ??
            (outlined
                ? context.theme.primaryTextTheme.bodyMedium!.copyWith(
                    color: hover
                        ? (textHoverColor ?? context.colors.background)
                        : color)
                : context.theme.whiteTextTheme.bodyMedium);

        if (textColor != null) {
          textStyle = textStyle?.copyWith(
              color: hover ? (textHoverColor ?? textColor) : textColor);
        }

        return AppCard(
          minWidth: minWidth,
          width: width,
          margin: margin,
          height: height ?? (kIsMobile ? 54 : 44),
          onPressed: !loading && onTap != null ? onTap! : null,
          color: hover ? (color) : (outlined ? fillColor : color),
          borderRadius: Radiuses.miniCircle,
          border: hover
              ? Border.all(color: color)
              : Border.all(
                  color: (outlined
                      ? (borderColor ?? textStyle!.color!)
                      : (color))),
          splashColor:
              outlined ? null : context.theme.backgroundColor.withOpacity(.1),
          padding: padding ??
              Spaces.only(
                vertical: Spaces.tiny,
                horizontal: text.isEmpty ? Spaces.small : Spaces.smallTiny,
              ),
          child: Row(
            mainAxisAlignment:
                center ? MainAxisAlignment.center : MainAxisAlignment.start,
            mainAxisSize:
                width == double.infinity ? MainAxisSize.max : MainAxisSize.min,
            children: [
              if (prefix != null && !loading) prefix!,
              if (prefixIcon != null && !loading)
                SvgIcon(
                  prefixIcon!,
                  margin: text.isEmpty ? null : (iconMargin ?? Spaces.miniEnd),
                  size: prefixIconSize ?? 21,
                  color: textStyle?.color,
                  rotate: rotateIcon,
                ),
              loading
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LoadingWidget(
                          color: textStyle?.color,
                          size: loaderSize ??
                              (textStyle!.fontSize! +
                                  (textStyle.fontSize! * 0.2)),
                        ),
                        if (loadingText != null) Spaces.tinyWidth,
                        if (loadingText != null)
                          LocaleText(
                            loadingText!,
                            style: textStyle,
                            localize: (localizeLoadingText ?? localize),
                          )
                      ],
                    )
                  : ExpandedWhen(
                      when: expandedText,
                      child: Visibility(
                        visible: text.isNotEmpty,
                        child: LocaleText(
                          hover && hoverText != null ? hoverText! : text,
                          style: textStyle,
                          localize: localize,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
              if (suffixIcon != null && !loading)
                SvgIcon(
                  suffixIcon!,
                  margin:
                      text.isEmpty ? null : (iconMargin ?? Spaces.miniStart),
                  size: suffixIconSize ?? 21,
                  color: textStyle?.color,
                  rotate: rotateIcon,
                ),
              if (suffix != null && !loading) suffix!,
            ],
          ),
        );
      },
    );
    if (tooltip != null) {
      child = AppTooltip(
        tooltip: tooltip,
        child: child,
      );
    }

    if (order != null) {
      return FocusTraversalOrder(
        order: NumericFocusOrder(order ?? 0),
        child: child,
      );
    }

    return child;
  }
}
