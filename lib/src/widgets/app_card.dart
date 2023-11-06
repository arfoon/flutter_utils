import 'package:flutter/material.dart';

import '../data/constants.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    Key? key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.child,
    this.borderRadius,
    this.gradient,
    this.color,
    this.boxShadow,
    this.alignment,
    this.onTap,
    this.border,
    this.shadowColor,
    this.shadowBlur,
    this.minHeight,
    this.minWidth,
    this.heroTag,
    this.duration,
    this.onPressed,
    this.splashColor,
    this.onLongPress,
    this.maxHeight,
    this.maxWidth,
    this.bindings,
    this.onDoubleTap,
  }) : super(key: key);

  final double? width;
  final double? height;
  final EdgeInsets? padding, margin;
  final BorderRadius? borderRadius;
  final Gradient? gradient;
  final BoxShadow? boxShadow;
  final Color? color, splashColor;
  final Color? shadowColor;
  final double? shadowBlur;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final Function? onTap;
  final BoxBorder? border;
  final double? minHeight;
  final double? minWidth;
  final double? maxHeight;
  final double? maxWidth;
  final String? heroTag;
  final Duration? duration;
  final Function? onPressed;
  final VoidCallback? onLongPress, onDoubleTap;
  final Map<SingleActivator, VoidCallback>? bindings;

  @override
  Widget build(BuildContext context) {
    Widget card;
    final decoration = BoxDecoration(
      color: color,
      borderRadius: borderRadius,
      boxShadow: [
        if (shadowColor != null)
          BoxShadow(color: shadowColor!, blurRadius: shadowBlur ?? 6),
        if (boxShadow != null) boxShadow!,
      ],
      gradient: gradient,
      border: border,
    );
    if (duration != null) {
      card = AnimatedContainer(
        duration: duration!,
        width: width,
        height: height,
        padding: padding,
        alignment: alignment,
        constraints: BoxConstraints(
          minHeight: minHeight ?? 0,
          minWidth: minWidth ?? 0,
          maxHeight: maxHeight ?? double.infinity,
          maxWidth: maxWidth ?? double.infinity,
        ),
        decoration: onPressed != null ? null : decoration,
        child: child,
      );
    } else {
      card = Container(
        width: width,
        height: height,
        padding: padding,
        alignment: alignment,
        constraints: BoxConstraints(
          minHeight: minHeight ?? 0,
          minWidth: minWidth ?? 0,
          maxHeight: maxHeight ?? double.infinity,
          maxWidth: maxWidth ?? double.infinity,
        ),
        decoration: onPressed != null ? null : decoration,
        child: child,
      );
    }

    if (heroTag != null) {
      card = Hero(tag: heroTag!, child: card);
    }

    if (bindings != null) {
      card = CallbackShortcuts(bindings: bindings!, child: card);
    }

    var primaryColor = Theme.of(context).primaryColor;

    if (onPressed != null) {
      card = Container(
        decoration: decoration.copyWith(color: color),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            focusColor: primaryColor.withOpacity(.1),
            onTap: () {
              onPressed?.call();
            },
            borderRadius: borderRadius,
            highlightColor: splashColor ?? primaryColor.withOpacity(.05),
            splashColor: splashColor ?? primaryColor.withOpacity(.05),
            hoverColor: splashColor ?? primaryColor.withOpacity(.05),
            overlayColor: MaterialStateProperty.all(
              splashColor ?? primaryColor.withOpacity(.05),
            ),
            child: card,
          ),
        ),
      );
    }

    if (onTap != null || onLongPress != null || onDoubleTap != null) {
      card = GestureDetector(
        onTap: onTap == null ? null : () => onTap!(),
        onLongPress: onLongPress,
        onDoubleTap: onDoubleTap,
        child: card,
      );
    }

    if ((onTap != null || onPressed != null || onLongPress != null) &&
        kIsDesktop) {
      card = MouseRegion(
        cursor: SystemMouseCursors.click,
        child: card,
      );
    }

    final container = Container(margin: margin, child: card);
    return container;
  }
}
