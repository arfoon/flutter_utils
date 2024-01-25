import 'package:flutter_utils/flutter_utils.dart';

Future showCenterDialog({
  required BuildContext context,
  required Widget child,
  double? width,
  double? height,
  bool dismissible = true,
  Widget? top,
  EdgeInsets? margin,
}) {
  return showDialog(
    context: context,
    barrierDismissible: dismissible,
    builder: (s) => CenterDialog(
      margin: margin,
      top: top,
      width: width,
      height: height,
      child: child,
    ),
  );
}

class CenterDialogTop extends StatelessWidget {
  const CenterDialogTop({
    Key? key,
    required this.title,
    this.icon,
    this.padding,
    this.action,
    this.action2,
    this.action3,
    this.action4,
    this.subtitle,
    this.onIconTap,
    this.onXTap,
    this.bottom,
    this.showCancel = true,
    this.showCancelWithTitle = false,
    this.hideActions = false,
  }) : super(key: key);
  final Widget title;
  final SvgData? icon;
  final EdgeInsets? padding;
  final Widget? action, action2, action3, action4, subtitle;
  final bool showCancel;
  final bool showCancelWithTitle, hideActions;
  final Function? onIconTap, onXTap;
  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppCard(
          color: context.theme.backgroundColor,
          padding: padding ??
              Spaces.only(
                horizontal: Spaces.small,
                vertical: Spaces.tinyMini,
                end: showCancel ? null : 0,
              ),
          child: Row(
            children: [
              if (showCancel && showCancelWithTitle)
                XCloseButton(onTap: onXTap),
              if (showCancel && showCancelWithTitle) Spaces.miniWidth,
              if (icon != null)
                SvgIcon(
                  icon!,
                  onTap: onIconTap,
                  color: context.theme.disabledColor,
                  margin: Spaces.only(end: Spaces.tiny),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                      style: context.theme.textTheme.titleLarge!,
                      child: title,
                    ),
                    if (subtitle != null) subtitle!,
                  ],
                ),
              ),
              if (!hideActions)
                AppRow(
                  separator: Spaces.miniWidth,
                  children: [
                    if (action4 != null) action4!,
                    if (action3 != null) action3!,
                    if (action2 != null) action2!,
                    if (action != null) action!,
                  ],
                ),
              if (!showCancelWithTitle) Spaces.miniWidth,
              if (showCancel && !showCancelWithTitle)
                XCloseButton(
                  onTap: onXTap,
                )
            ],
          ),
        ),
        if (bottom != null) bottom!,
        if (bottom == null) const Divider(),
      ],
    );
  }
}

class CenterDialog extends StatelessWidget {
  const CenterDialog({
    Key? key,
    required this.child,
    this.top,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.expandChild = false,
    this.bottom,
    this.alignment = Alignment.center,
    this.backgroundColor,
    this.borderRadius,
    this.maxWidth,
    this.maxHeight,
  }) : super(key: key);
  final Widget child;
  final Widget? top;
  final double? width, maxWidth;
  final double? height, maxHeight;
  final EdgeInsets? margin, padding;
  final bool expandChild;
  final Widget? bottom;
  final AlignmentGeometry alignment;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: margin ?? Spaces.zero,
        child: Stack(
          children: [
            Align(
              alignment: alignment,
              child: ClipRRect(
                borderRadius: borderRadius ?? Radiuses.smallCircle,
                child: AppCard(
                  width: width,
                  height: height,
                  maxHeight: maxHeight,
                  maxWidth: maxWidth,
                  color:
                      backgroundColor ?? context.theme.scaffoldBackgroundColor,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (top != null) top!,
                      ExpandedWhen(
                        when: expandChild || height != null,
                        child: Padding(
                          padding: (padding ?? Spaces.zero),
                          child: bottom != null
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [child, bottom!],
                                )
                              : child,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
