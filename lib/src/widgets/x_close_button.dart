import 'package:flutter_utils/flutter_utils.dart';

class XCloseButton extends StatelessWidget {
  const XCloseButton({
    Key? key,
    this.onTap,
    this.size,
  }) : super(key: key);
  final Function? onTap;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onKey: (node, event) {
        if (context.isActive &&
            event.runtimeType == RawKeyDownEvent &&
            event.logicalKey == LogicalKeyboardKey.escape) {
          context.popIfCan();
        }
        return KeyEventResult.ignored;
      },
      child: HoverBuilder(
        builder: (hover) => SvgIcon(
          AppData.of(context).closeIcon,
          color: hover
              ? context.theme.negativeColor
              : context.theme.disabledLightColor,
          onTap: onTap ?? () => context.pop(),
          size: size ?? 26,
          margin: context.isMobile ? Spaces.miniHorizontal : null,
        ),
      ),
    );
  }
}
