import 'package:flutter_utils/flutter_utils.dart';

class AppData {
  static AppData of(BuildContext context) =>
      RepositoryProvider.of<AppData>(context);

  final Map<String, String> Function() imageHttpHeaders;
  final SvgData defaultImage;
  final SvgData closeIcon;
  final AppThemeData theme;
  final ThemeMode? initalMode;
  final String? assetsPath;

  AppData({
    required this.imageHttpHeaders,
    required this.defaultImage,
    required this.theme,
    required this.closeIcon,
    this.initalMode,
    this.assetsPath,
  });

  AppData copyWith({
    Map<String, String> Function()? imageHttpHeaders,
    SvgData? defaultImage,
    SvgData? closeIcon,
    AppThemeData? theme,
    ThemeMode? initalMode,
    String? assetsPath,
  }) {
    return AppData(
      imageHttpHeaders: imageHttpHeaders ?? this.imageHttpHeaders,
      defaultImage: defaultImage ?? this.defaultImage,
      closeIcon: closeIcon ?? this.closeIcon,
      theme: theme ?? this.theme,
      initalMode: initalMode ?? this.initalMode,
      assetsPath: assetsPath ?? this.assetsPath,
    );
  }
}

extension AssetPathExt on String {
  String assetPath(BuildContext context) {
    return (AppData.of(context).assetsPath ?? '') + this;
  }
}
