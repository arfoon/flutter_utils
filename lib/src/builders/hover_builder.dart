import '../utils.dart';

class HoverBuilder extends StatefulWidget {
  const HoverBuilder({
    Key? key,
    required this.builder,
    this.enable = true,
    this.orHover = false,
  }) : super(key: key);
  final Widget Function(bool hover) builder;
  final bool enable;
  final bool orHover;

  @override
  State<HoverBuilder> createState() => _HoverBuilderState();
}

class _HoverBuilderState extends State<HoverBuilder> {
  bool hover = false;
  
  @override
  Widget build(BuildContext context) {
    if (widget.orHover) return widget.builder(true);

    return !widget.enable
        ? widget.builder(false)
        : MouseRegion(
            onEnter: (event) {
              if (mounted) setState(() => hover = true);
            },
            onExit: (event) {
              if (mounted) setState(() => hover = false);
            },
            child: widget.builder(hover),
          );
  }
}
