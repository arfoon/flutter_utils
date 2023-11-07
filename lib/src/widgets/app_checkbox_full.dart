import 'package:flutter_utils/flutter_utils.dart';

class AppCheckboxFull extends StatefulWidget {
  const AppCheckboxFull({
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
  }) : super(key: key);
  final bool value;
  final Function(bool checked) onChanged;
  final Color? color, checkColor, textColor;
  final Widget? text, ending;
  final Border? border;
  final bool enabled, loading;
  final String? tooltip;
  final double? width;

  @override
  State<AppCheckboxFull> createState() => _AppCheckboxFullState();
}

class _AppCheckboxFullState extends State<AppCheckboxFull> {
  bool value = false;

  @override
  void initState() {
    super.initState();
    value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return AppCheckbox(
      width: widget.width,
      value: value,
      border: widget.border,
      checkColor: widget.checkColor,
      color: widget.color,
      enabled: widget.enabled,
      ending: widget.ending,
      loading: widget.loading,
      text: widget.text,
      textColor: widget.textColor,
      tooltip: widget.tooltip,
      onChanged: (v) {
        setState(() {
          value = v;
          widget.onChanged(v);
        });
      },
    );
  }
}
