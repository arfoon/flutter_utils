import 'package:flutter_utils/flutter_utils.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? pref;

class AppData {
  static initDefaults() async {
    pref = await SharedPreferences.getInstance();
  }

  static AppData of(BuildContext context) =>
      RepositoryProvider.of<AppData>(context);

  final Map<String, String> Function() imageHttpHeaders;
  final SvgData defaultImage;
  final SvgData closeIcon;
  final AppThemeData theme;
  final ThemeMode? initalMode;

  /// Example: `assetPrefix: 'packages/connect_frontend/',`
  final String? assetPrefix;

  AppData({
    required this.imageHttpHeaders,
    required this.defaultImage,
    required this.theme,
    required this.closeIcon,
    this.initalMode,
    this.assetPrefix,
  });

  AppData copyWith({
    Map<String, String> Function()? imageHttpHeaders,
    SvgData? defaultImage,
    SvgData? closeIcon,
    AppThemeData? theme,
    ThemeMode? initalMode,
    String? assetPrefix,
  }) {
    return AppData(
      imageHttpHeaders: imageHttpHeaders ?? this.imageHttpHeaders,
      defaultImage: defaultImage ?? this.defaultImage,
      closeIcon: closeIcon ?? this.closeIcon,
      theme: theme ?? this.theme,
      initalMode: initalMode ?? this.initalMode,
      assetPrefix: assetPrefix ?? this.assetPrefix,
    );
  }
}

extension AssetPathExt on String {
  String assetPath(BuildContext context) {
    return (AppData.of(context).assetPrefix ?? '') + this;
  }
}
