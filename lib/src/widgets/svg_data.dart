import 'package:flutter/services.dart';

class SvgData {
  final String name;
  const SvgData(this.name);

  String get path => "assets/svg/$name.svg";
  Future<String> get load => rootBundle.loadString(path);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SvgData && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
