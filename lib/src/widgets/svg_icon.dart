import '../utils.dart';

class SvgIcon extends StatelessWidget {
  final SvgData svg;
  final bool accent;
  final bool useDefaultColor;
  final Color? color;
  final double size;
  final double? width, height;
  final int? rotate;
  final Function? onTap;
  final bool disabled;
  final EdgeInsets? padding, margin;

  const SvgIcon(
    this.svg, {
    Key? key,
    this.accent = false,
    this.size = 24,
    this.color,
    this.useDefaultColor = false,
    this.rotate,
    this.onTap,
    this.disabled = false,
    this.padding,
    this.margin,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon = SvgPicture.asset(
      svg.path,
      width: width ?? size,
      height: height ?? size,
      color: color ?? IconTheme.of(context).color,
    );

    if (rotate != null) {
      icon = RotatedBox(quarterTurns: rotate!, child: icon);
    }

    if (onTap != null) {
      icon = MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(onTap: () => onTap!(), child: icon),
      );
    }

    return ExcludeFocus(
      child: Container(
        width: width ?? size,
        height: height ?? size,
        padding: padding,
        margin: margin,
        child: Center(child: icon),
      ),
    );
  }
}
