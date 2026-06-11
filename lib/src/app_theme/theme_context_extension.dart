import 'package:flutter_utils/src/utils.dart';

extension ThemeContextExtension on BuildContext {
  AppThemeData get theme => AppTheme.of(this);
  AppColors get colors => AppTheme.of(this).colors;
  ThemeData get material => AppTheme.of(this).material;
  SystemUiOverlayStyle get systemOverlayStyle => theme.systemOverlayStyle;
  bool get isSystemDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
