import 'package:flutter_utils/src/utils.dart';

extension RouterExtensions on BuildContext {
  pop([data]) {
    Navigator.pop(this, data);
  }

  popIfCan([data]) {
    if (Navigator.canPop(this)) Navigator.pop(this, data);
  }

  bool get canPop {
    return Navigator.canPop(this);
  }

  bool get cannotPop => !canPop;

  Future pushDialog(
    Widget screen, {
    args,
    bool remove = false,
  }) {
    if (isDesktop) {
      return dialog(builder: (context) => screen);
    }
    return push(screen, args: args, remove: remove);
  }

  Future push(
    dynamic screen, {
    args,
    bool remove = false,
    bool anmation = true,
  }) {
    if (screen is Widget) {
      return Navigator.push(
        this,
        !anmation
            ? PageRouteBuilder(
                pageBuilder: (_, __, ___) => screen,
                transitionDuration: const Duration(seconds: 0),
              )
            : MaterialPageRoute(builder: (_) => screen),
      );
    }
    if (remove) {
      return Navigator.of(this).pushNamedAndRemoveUntil(
        screen,
        (Route<dynamic> routes) => false,
      );
    } else {
      return Navigator.pushNamed(this, screen, arguments: args);
    }
  }

  Future<T?> dialog<T>({
    required Widget Function(BuildContext) builder,
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
  }) {
    return showDialog<T>(
      context: this,
      builder: builder,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
    );
  }
}
