import 'package:flutter/widgets.dart';

class AppRow extends StatelessWidget {
  const AppRow({
    Key? key,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.separator,
    this.reverse = false,
  }) : super(key: key);
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final Widget? separator;
  final bool reverse;

  List<Widget> get _children => reverse ? children.reversed.toList() : children;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: separator != null
          ? List.generate(_children.length, (i) {
              if ((i == 0 && _children.length == 1) ||
                  i == _children.length - 1) {
                return _children[i];
              }
              return Row(
                crossAxisAlignment: crossAxisAlignment,
                mainAxisAlignment: mainAxisAlignment,
                children: [_children[i], separator!],
              );
            })
          : _children,
    );
  }
}
