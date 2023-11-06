import 'package:flutter/material.dart';

class ExpandedWhen extends StatelessWidget {
  const ExpandedWhen({
    Key? key,
    required this.when,
    required this.child,
    this.flex = 1,
  }) : super(key: key);
  final bool when;
  final Widget child;
  final int? flex;

  @override
  Widget build(BuildContext context) {
    return !when || flex == null ? child : Expanded(flex: flex!, child: child);
  }
}