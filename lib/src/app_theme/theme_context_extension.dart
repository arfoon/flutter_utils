import 'package:flutter_utils/src/utils.dart';

extension ThemeContextExtension on BuildContext {
  AppThemeData get theme => AppTheme.of(this);
  ThemeColors get colors => AppTheme.of(this).colors;
  ThemeData get material => AppTheme.of(this).material;
  bool get isSystemDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
