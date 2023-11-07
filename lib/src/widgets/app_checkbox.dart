import 'package:flutter_utils/flutter_utils.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    this.color,
    this.text,
    this.border,
    this.enabled = true,
    this.tooltip,
    this.ending,
    this.checkColor,
    this.loading = false,
    this.textColor,
    this.width,
    this.expandedText = false,
    this.leading,
  }) : super(key: key);
  final bool value;
  final Function(bool checked) onChanged;
  final Color? color, checkColor, textColor;
  final Widget? text, ending;
  final Border? border;
  final bool enabled, loading;
  final String? tooltip;
  final double? width;
  final bool expandedText;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    var active = value | enabled;

    var color = this.color ??
        ((!active
            ? context.theme.disabledColor
            : (context.theme.primaryColor)));

    return AppTooltip(
      tooltip: tooltip,
      child: AppCard(
        width: width,
        border: border,
        borderRadius: Radiuses.circular(4),
        onPressed: () {
          if (enabled) onChanged(!value);
        },
        child: Row(
          children: [
            if (leading != null) leading!,
            loading
                ? const LoadingWidget(size: 21)
                : Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.6, color: color),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: Radiuses.miniCircle,
                    ),
                    activeColor: color,
                    checkColor: checkColor,
                    value: value,
                    onChanged: (b) {
                      if (enabled) onChanged(!value);
                    },
                  ),
            if (text != null)
              ExpandedWhen(
                when: expandedText,
                child: DefaultTextStyle(
                  style:
                      context.theme.textThemeOf(textColor ?? color).bodyText2!,
                  child: text!,
                ),
              ),
            if (text != null) Spaces.tinyMiniWidth,
            if (ending != null) ending!,
          ],
        ),
      ),
    );
  }
}
