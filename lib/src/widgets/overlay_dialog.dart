import 'package:flutter_utils/flutter_utils.dart';

class OverlayHolder {
  static OverlayHolder of(BuildContext context) =>
      RepositoryProvider.of<OverlayHolder>(context);

  OverlayEntry? overlay;
  OverlayHolder({this.overlay});
  bool showing = false;

  static setOverlay(BuildContext context, OverlayEntry overlay) {
    of(context).overlay = overlay;
  }

  static toggle(BuildContext context, OverlayEntry overlay) {
    if (of(context).showing) {
      hide(context);
    } else {
      show(context, overlay);
    }
  }

  static hide(BuildContext context) {
    if (of(context).overlay != null && of(context).overlay!.mounted) {
      of(context).overlay!.remove();
      of(context).showing = false;
    }
  }

  static show(BuildContext context, OverlayEntry overlay) {
    FocusScope.of(context).unfocus();
    of(context).overlay = overlay;
    of(context).showing = true;
    Overlay.of(context).insert(overlay);
  }
}

class OverlayDialog extends StatefulWidget {
  const OverlayDialog({
    Key? key,
    required this.child,
    required this.overlay,
    this.addTop = 0,
    this.addLeft = 0,
    this.addWidth = 0,
    this.top,
    this.underButton = false,
    this.afterReturnOverlay,
    this.title,
    this.selectWidth,
    this.manyItems = false,
  }) : super(key: key);
  final Widget child;
  final Widget Function() overlay;
  final double? top;
  final double addWidth;
  final double addTop;
  final double addLeft;
  final bool underButton;
  final VoidCallback? afterReturnOverlay;
  final String? title;
  final double? selectWidth;
  final bool manyItems;

  @override
  State<OverlayDialog> createState() => _OverlayDialogState();
}

class _OverlayDialogState extends State<OverlayDialog> {
  GlobalKey buttonKey = GlobalKey();
  bool returnOverlay = false;
  double? width;

  OverlayEntry createOverlay() {
    RenderBox buttonRenderBox =
        buttonKey.currentContext!.findRenderObject() as RenderBox;
    Offset buttonPosition = buttonRenderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            OverlayHolder.hide(context);
            setState(() {
              width = null;
            });
          },
          child: GestureDetector(
            onTap: () {},
            child: Stack(
              children: [
                Positioned(
                  top: widget.top ??
                      ((widget.underButton
                              ? (buttonPosition.dy +
                                  buttonRenderBox.size.height +
                                  2)
                              : buttonPosition.dy) +
                          widget.addTop),
                  left: (buttonPosition.dx + widget.addLeft),
                  width:
                      ((width ?? buttonRenderBox.size.width) + widget.addWidth),
                  child: Material(
                    type: MaterialType.transparency,
                    child: Focus(
                      child: FocusTraversalGroup(
                        child: AppCard(
                          borderRadius: Radiuses.smallCircle,
                          padding: Spaces.miniAll,
                          color: context.theme.backgroundColor,
                          boxShadow: BoxShadow(
                            color: context.theme.textColor.withOpacity(.1),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                          border: Border.all(
                            color: context.theme.disabledLightColor,
                          ),
                          child: widget.overlay(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      maintainState: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final child = returnOverlay
        ? widget.overlay()
        : AppCard(
            key: buttonKey,
            onPressed: () {
              if (context.isMobile && widget.afterReturnOverlay != null) {
                setState(() {
                  returnOverlay = true;
                });
                widget.afterReturnOverlay?.call();
              } else if (context.isMobile) {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: widget.manyItems,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.title != null)
                            Column(
                              children: [
                                Padding(
                                  padding: Spaces.smallAll.copyWith(
                                    top: Spaces.tinyMini,
                                  ),
                                  child: Text(
                                    widget.title!,
                                    style: context.theme.textTheme.bodyMedium,
                                  ),
                                ),
                                const Divider(),
                              ],
                            ),
                          widget.overlay(),
                        ],
                      );
                    });
              } else {
                setState(() {
                  width = widget.selectWidth;
                });
                if (widget.manyItems) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return CenterDialog(
                          top: CenterDialogTop(
                            title: LocaleText(widget.title ?? ''),
                          ),
                          width: 300,
                          height: context.heightDot(70),
                          child: ListView(
                            children: [widget.overlay()],
                          ),
                        );
                      });
                } else {
                  OverlayHolder.toggle(context, createOverlay());
                }
              }
            },
            width: width,
            child: widget.child,
          );

    return child;
  }
}
