import 'package:flutter_utils/flutter_utils.dart';

class AppData {
  static AppData of(BuildContext context) =>
      RepositoryProvider.of<AppData>(context);

  final Map<String, String> Function() imageHttpHeaders;
  final SvgData defaultImage;
  final SvgData closeIcon;
  final AppThemeData theme;
  final ThemeMode? initalMode;

  AppData({
    required this.imageHttpHeaders,
    required this.defaultImage,
    required this.theme,
    required this.closeIcon,
    this.initalMode,
  });
}
