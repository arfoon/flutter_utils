import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({
    Key? key,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.separator,
  }) : super(key: key);
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final Widget? separator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: separator != null
          ? List.generate(children.length, (i) {
              if ((i == 0 && children.length == 1) ||
                  i == children.length - 1) {
                return children[i];
              }
              return Column(
                crossAxisAlignment: crossAxisAlignment,
                mainAxisAlignment: mainAxisAlignment,
                children: [children[i], separator!],
              );
            })
          : children,
    );
  }
}
