import 'package:flutter_utils/flutter_utils.dart';

extension TextEditingControllerExtension on TextEditingController {
  bool get isEmptyOrZero =>
      text.isEmpty || (text.isInt && text.toInt! == 0) || text == '0.0';
  bool get isNotEmptyNorZero => !isEmptyOrZero;
  String? get textOrNull => isEmptyOrZero ? null : text.trim();
  String? get textEmptyNull => text.isEmpty ? null : text.trim();

  selectEnd([
    String? text,
    int? length,
  ]) {
    if (text != null) this.text = text;
    selection = TextSelection(
      baseOffset: length ?? this.text.length,
      extentOffset: length ?? this.text.length,
    );
  }
}

extension TextEditingControllersExtension on List<TextEditingController> {
  bool get areCleared => where((element) => element.text.isNotEmpty).isEmpty;
  bool get allAreEmpty =>
      where((element) => element.text.isEmpty).length == length;

  void dispose() => forEach((element) {
        element.dispose();
      });
}
