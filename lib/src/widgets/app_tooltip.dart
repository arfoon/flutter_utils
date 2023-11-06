import '../utils.dart';

class AppTooltip extends StatelessWidget {
  const AppTooltip({
    Key? key,
    required this.tooltip,
    required this.child,
    this.color,
    this.localize = true,
  }) : super(key: key);

  final String? tooltip;
  final Widget child;
  final Color? color;
  final bool localize;

  @override
  Widget build(BuildContext context) {
    if (tooltip == null) return child;
    final tt = Tooltip(
      preferBelow: true,
      waitDuration: const Duration(milliseconds: 800),
      triggerMode: TooltipTriggerMode.manual,
      richMessage: TextSpan(
        style: context.theme.whiteTextTheme.caption2,
        locale: Locales.currentLocale(context),
        children: [
          TextSpan(
            locale: Locales.currentLocale(context),
            text: tooltip,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: color ?? context.theme.disabledColor,
        borderRadius: Radiuses.miniCircle,
      ),
      padding: Spaces.miniAll.copyWith(left: Spaces.tiny, right: Spaces.tiny),
      child: localize
          ? Directionality(
              textDirection: Directionality.of(context),
              child: child,
            )
          : child,
    );
    return localize
        ? Directionality(
            textDirection:
                tooltip!.isEnglishWord ? TextDirection.ltr : TextDirection.rtl,
            child: tt,
          )
        : tt;
  }
}
