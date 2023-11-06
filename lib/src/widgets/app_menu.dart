import '../utils.dart';
import 'package:flutter/gestures.dart';

class MenuAction {
  final String text;
  final VoidCallback onTap;
  final Widget? child;
  MenuAction({
    required this.text,
    required this.onTap,
    this.child,
  });
}

class AppMenu extends StatelessWidget {
  const AppMenu({
    Key? key,
    required this.child,
    required this.actions,
    this.enable = true,
  }) : super(key: key);

  final Widget child;
  final bool enable;
  final List<MenuAction> actions;

  @override
  Widget build(BuildContext context) {
    if (!enable) return child;

    return Listener(
      child: child,
      onPointerDown: (event) async {
        final rightClick = event.kind == PointerDeviceKind.mouse &&
            event.buttons == kSecondaryMouseButton;
        if (!rightClick) return;
        final overlay =
            Overlay.of(context).context.findRenderObject() as RenderBox;
        var position = RelativeRect.fromSize(
          event.position & const Size(48, 48),
          overlay.size,
        );
        await show(
          context: context,
          position: position,
          actions: actions,
        );
      },
    );
  }

  static Future show({
    required BuildContext context,
    required RelativeRect position,
    required List<MenuAction> actions,
  }) async {
    final i = await showMenu<int>(
      context: context,
      position: position,
      items: [
        ...List.generate(actions.length, (i) {
          var action = actions[i];
          return PopupMenuItem(
            height: 32,
            value: i,
            padding: Spaces.tinyHorizontal,
            child: action.child ??
                Text(
                  action.text,
                  style: context.theme.textTheme.bodyText2,
                ),
          );
        }),
      ],
    );

    if (i != null) {
      actions[i].onTap();
    }
  }
}

class TapMenu extends StatelessWidget {
  const TapMenu({
    Key? key,
    required this.actions,
    required this.child,
  }) : super(key: key);
  final List<MenuAction> actions;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (actions.isEmpty) return child;

    return Listener(
      onPointerDown: (event) {
        final rightClick = event.kind == PointerDeviceKind.mouse &&
            event.buttons == kSecondaryMouseButton;
        if (rightClick) return;
        final overlay =
            Overlay.of(context).context.findRenderObject() as RenderBox;
        var position = RelativeRect.fromSize(
          event.position & const Size(48, 48),
          overlay.size,
        );
        AppMenu.show(
          context: context,
          position: position,
          actions: actions,
        );
      },
      child: child,
    );
  }
}
