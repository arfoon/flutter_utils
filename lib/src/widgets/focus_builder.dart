import 'package:flutter_utils/flutter_utils.dart';

class FocusBuilder extends StatefulWidget {
  const FocusBuilder({
    Key? key,
    required this.builder,
    this.onKey,
    this.focusNode,
    this.onFocusChange,
  }) : super(key: key);
  final Widget Function(bool) builder;
  final KeyEventResult Function(FocusNode, RawKeyEvent)? onKey;
  final FocusNode? focusNode;
  final Function(BuildContext, bool)? onFocusChange;

  @override
  State<FocusBuilder> createState() => _FocusBuilderState();
}

class _FocusBuilderState extends State<FocusBuilder> {
  bool focus = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.focusNode,
      onFocusChange: (f) {
        setState(() => focus = f);
        widget.onFocusChange?.call(context, f);
      },
      onKey: widget.onKey,
      child: widget.builder(focus),
    );
  }
}
