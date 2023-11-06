import 'package:flutter_utils/src/utils.dart';

extension ThemeContextExtension on BuildContext {
  AppThemeData get theme => AppTheme.of(this);
  ThemeData get material => AppTheme.of(this).material;
}
