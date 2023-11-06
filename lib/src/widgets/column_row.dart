import '../utils.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({
    Key? key,
    this.rowWhen = false,
    required this.children,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.columnSeparator,
    this.rowSeparator,
  }) : super(key: key);
  final bool rowWhen;
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final Widget? columnSeparator, rowSeparator;

  @override
  Widget build(BuildContext context) {
    return rowWhen
        ? AppRow(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            mainAxisSize: mainAxisSize ?? MainAxisSize.max,
            separator: rowSeparator,
            children: children,
          )
        : AppColumn(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            mainAxisSize: mainAxisSize ?? MainAxisSize.max,
            separator: columnSeparator,
            children: children,
          );
  }
}
