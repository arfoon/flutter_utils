import 'package:flutter_utils/flutter_utils.dart';

class AppThemeData {
  final AppColors lightColors;
  final AppColors? darkColors;
  final String fontFamily;
  final String? localFontFamily;
  final bool isExactSystem;
  final bool isDarkMode;
  final bool useMaterial3;
  final TextSizes? textSizes;

  AppThemeData({
    required this.lightColors,
    required this.darkColors,
    required this.fontFamily,
    this.localFontFamily,
    this.isExactSystem = false,
    this.isDarkMode = false,
    this.useMaterial3 = false,
    this.textSizes,
  }) {
    if (textSizes != null) {
      TextSizes.init(textSizes);
    }
  }

  AppThemeData copyWith({
    AppColors? lightColors,
    AppColors? darkColors,
    String? fontFamily,
    String? localFontFamily,
    bool? isExactSystem,
    bool? isDarkMode,
    bool? useMaterial3,
  }) {
    return AppThemeData(
      lightColors: lightColors ?? this.lightColors,
      darkColors: darkColors ?? this.darkColors,
      fontFamily: fontFamily ?? this.fontFamily,
      localFontFamily: localFontFamily ?? this.localFontFamily,
      isExactSystem: isExactSystem ?? this.isExactSystem,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      useMaterial3: useMaterial3 ?? this.useMaterial3,
    );
  }

  String get localFont => localFontFamily ?? fontFamily;
  bool get darkMode => isDarkMode;
  AppColors get colors => darkMode ? (darkColors ?? lightColors) : lightColors;

  ThemeData themeData({
    required AppColors colors,
    bool light = true,
    Iterable<ThemeExtension<dynamic>>? extensions,
    bool? useMaterial3,
  }) {
    final useM3 = useMaterial3 ?? this.useMaterial3;
    final brightness = light ? Brightness.light : Brightness.dark;

    return ThemeData(
      brightness: brightness,
      useMaterial3: useM3,
      extensions: extensions,
      visualDensity: VisualDensity.comfortable,
      fontFamily: fontFamily,
      primarySwatch: colors.swatch ?? Colors.teal,
      primaryColor: colors.primary,
      primaryColorDark: colors.primary.dark,
      primaryColorLight: colors.primary.light,
      cardColor: colors.surface,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: colors.primary,
        onPrimary: colors.primary.on ?? (light ? Colors.white : Colors.black),
        primaryContainer: colors.primary.light ?? colors.primary,
        onPrimaryContainer: colors.primary.light?.on ??
            colors.primary.on ??
            (light ? Colors.white : Colors.black),
        secondary: colors.secondary,
        onSecondary:
            colors.secondary.on ?? (light ? Colors.white : Colors.black),
        secondaryContainer: colors.secondary.light ?? colors.secondary,
        onSecondaryContainer: colors.secondary.light?.on ??
            colors.secondary.on ??
            (light ? Colors.white : Colors.black),
        tertiary: colors.ok,
        onTertiary: colors.ok.on ?? (light ? Colors.white : Colors.black),
        error: colors.error,
        onError: colors.error.on ?? Colors.white,
        surface: colors.surface,
        onSurface: colors.text,
        surfaceContainerHighest: colors.background,
        onSurfaceVariant: colors.text.opacityOf(0.7),
        outline: colors.divider,
        shadow: Colors.black.opacityOf(0.1),
        inverseSurface: colors.text,
        onInverseSurface: colors.surface,
        inversePrimary: colors.primary.light ?? colors.primary,
      ),
      scaffoldBackgroundColor: colors.background,
      dialogBackgroundColor: colors.surface,
      canvasColor: colors.background,
      textTheme: textThemeOf(colors.text),
      primaryTextTheme: textThemeOf(colors.primary),
      disabledColor: colors.disabled,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colors.primary,
        selectionColor: colors.primary.opacityOf(0.3),
        selectionHandleColor: colors.primary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
        foregroundColor: colors.text,
        surfaceTintColor: Colors.transparent,
        elevation: .0,
        centerTitle: false,
        titleTextStyle: colors.text.title.medium,
        toolbarTextStyle: colors.text.title.medium,
        iconTheme: IconThemeData(color: colors.primary),
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness:
              light ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: light ? Brightness.dark : Brightness.light,
          statusBarBrightness: light ? Brightness.light : Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: colors.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        titleTextStyle: colors.text.title.semiBold,
        contentTextStyle: colors.text.body.regular,
      ),
      dividerColor: colors.divider,
      dividerTheme: DividerThemeData(
        color: colors.divider,
        space: 0,
        endIndent: 0,
        indent: 0,
        thickness: 1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.primary.on,
          disabledBackgroundColor: colors.disabled,
          disabledForegroundColor: colors.disabled.on,
          elevation: useM3 ? null : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: colors.surface,
        elevation: useM3 ? null : 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.background,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.divider),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.divider),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.error),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      iconTheme: IconThemeData(color: colors.primary),
    );
  }

  ThemeData get light {
    return themeData(colors: lightColors, light: true);
  }

  ThemeData get dark {
    return themeData(colors: darkColors ?? lightColors, light: false);
  }

  ThemeData get material {
    return darkMode ? dark : light;
  }

  TextTheme newTextThemeOf(Color color, {double i = 0}) {
    final sizes = TextSizes.instance;
    return TextTheme(
      displayLarge: sizes.head.plusSize(i).bold,
      displayMedium: sizes.display.plusSize(i).semiBold,
      displaySmall: sizes.display.plusSize(i).regular,
      headlineLarge: sizes.headline.plusSize(i).bold,
      headlineMedium: sizes.headline.plusSize(i).semiBold,
      headlineSmall: sizes.headline.plusSize(i).regular,
      titleLarge: sizes.title.plusSize(i).bold,
      titleMedium: sizes.title.plusSize(i).semiBold,
      titleSmall: sizes.title.plusSize(i).regular,
      bodyLarge: sizes.subtitle.plusSize(i).regular,
      bodyMedium: sizes.body.plusSize(i).regular,
      bodySmall: sizes.label.plusSize(i).regular,
      labelLarge: sizes.body.plusSize(i).medium,
      labelMedium: sizes.label.plusSize(i).medium,
      labelSmall: sizes.caption.plusSize(i).medium,
    ).apply(
      decorationColor: color,
      bodyColor: color,
      displayColor: color,
    );
  }

  TextTheme textThemeOf(Color? color) {
    double i = 0;
    color ??= colors.text;
    if (!isExactSystem) return newTextThemeOf(color);
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 32 + i,
        fontWeight: FontWeight.normal,
      ),
      displayMedium: TextStyle(
        fontSize: 32 + i,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 28 + i,
        fontWeight: FontWeight.normal,
      ),
      headlineMedium: TextStyle(
        fontSize: 28 + i,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontSize: 24 + i,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: const TextStyle(
        fontSize: 24 + 1,
        height: 1,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 18 + i,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 18 + i,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontSize: 16 + i,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14 + i,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 12 + i,
        fontWeight: FontWeight.normal,
      ),
      labelSmall: TextStyle(
        fontSize: 10 + i,
        fontWeight: FontWeight.w600,
      ),
    ).apply(
      decorationColor: color,
      bodyColor: color,
      displayColor: color,
    );
  }

  @Deprecated('Use context.colors instead')
  AppBarThemeData get appBarTheme => material.appBarTheme;

  @Deprecated('Use context.colors instead')
  Color valueColor(double value, {bool isBalance = false}) {
    if (value == 0) return light.disabledColor;
    return value < 0 ? negativeColor : (isBalance ? textColor : positiveColor);
  }

  @Deprecated('Use context.colors instead')
  Color moneyColor({required bool isDebit}) => valueColor(isDebit ? -4 : 4);

  @Deprecated('Use context.colors instead')
  ColorScheme get colorScheme => material.colorScheme;

  @Deprecated('Use context.colors instead')
  Color get dividerColor => colors.divider;
  @Deprecated('Use context.colors instead')
  Color get primaryColor => colors.primary;
  @Deprecated('Use context.colors instead')
  Color get primaryColorDark => material.primaryColorDark;
  @Deprecated('Use context.colors instead')
  Color get primaryColorLight => material.primaryColorLight;
  @Deprecated('Use context.colors instead')
  Color get shadowColor => material.shadowColor;
  @Deprecated('Use context.colors instead')
  Color get disabledColor => colors.disabled;
  @Deprecated('Use context.colors instead')
  Color get backgroundColor => colors.background;
  @Deprecated('Use context.colors instead')
  Color get scaffoldBackgroundColor => material.scaffoldBackgroundColor;
  @Deprecated('Use context.colors instead')
  Color get disabledLightColor => colors.disabled.light ?? colors.disabled;
  @Deprecated('Use context.colors instead')
  Color get errorColor => colors.error;
  @Deprecated('Use context.colors instead')
  Color? get primaryColor05 => colors.primary.opacityOf(.05);
  @Deprecated('Use context.colors instead')
  Color get negativeColor => colors.negative;
  @Deprecated('Use context.colors instead')
  Color get positiveColor => colors.positive;
  @Deprecated('Use context.colors instead')
  Color positiveColorIf(bool b) => b ? positiveColor : negativeColor;
  @Deprecated('Use context.colors instead')
  Color get textColor => colors.text;
  @Deprecated('Use context.colors instead')
  Color get warningColor => colors.warning;
  @Deprecated('Use context.colors instead')
  Color get selectedRecordColor => colors.primary;
  @Deprecated('Use context.colors instead')
  Color? get selectedRecordColor03 => selectedRecordColor.opacityOf(.3);
  @Deprecated('Use context.colors instead')
  Color get okColor => colors.ok;
  @Deprecated('Use context.colors instead')
  Color warningColorIf(bool when) => when ? colors.warning : textColor;

  // Colored Text Theme
  @Deprecated('Use context.colors instead')
  TextTheme get textTheme => textThemeOf(colors.text);
  @Deprecated('Use context.colors instead')
  TextTheme get backgroundTextTheme => textThemeOf(colors.background);
  @Deprecated('Use context.colors instead')
  TextTheme get surfaceTextTheme => textThemeOf(colors.surface);
  @Deprecated('Use context.colors instead')
  TextTheme get primaryTextTheme => textThemeOf(colors.primary);
  @Deprecated('Use context.colors instead')
  TextTheme get primaryDarkTextTheme => textThemeOf(colors.primary.dark);
  @Deprecated('Use context.colors instead')
  TextTheme get blackTextTheme => textThemeOf(colors.text);
  @Deprecated('Use context.colors instead')
  TextTheme get disabledLightTextTheme => textThemeOf(colors.disabled.light);
  @Deprecated('Use context.colors instead')
  TextTheme get whiteSmokeTextTheme => textThemeOf(colors.surface);
  @Deprecated('Use context.colors instead')
  TextTheme get disabledTextTheme => textThemeOf(colors.disabled);
  @Deprecated('Use context.colors instead')
  TextTheme get negativeTextTheme => textThemeOf(negativeColor);
  @Deprecated('Use context.colors instead')
  TextTheme get positiveTextTheme => textThemeOf(positiveColor);
  @Deprecated('Use context.colors instead')
  TextTheme positiveTextThemeIf(bool b) => textThemeOf(positiveColorIf(b));
  @Deprecated('Use context.colors instead')
  TextTheme get errorTextTheme => textThemeOf(colors.error);
  @Deprecated('Use context.colors instead')
  TextTheme get secondaryTextTheme => textThemeOf(colors.secondary);
  @Deprecated('Use context.colors instead')
  TextTheme get secondaryDarkTextTheme => textThemeOf(colors.secondary.dark);
  @Deprecated('Use context.colors instead')
  TextTheme get secondaryLightTextTheme => textThemeOf(colors.secondary.light);

  @Deprecated('Use context.colors instead')
  Border disabledBorder({double width = 1}) =>
      Border.all(color: colors.disabled, width: width);

  @Deprecated('Use context.colors instead')
  Border border({double width = 1, Color? color}) =>
      Border.all(color: color ?? colors.primary, width: width);

  @Deprecated('Use context.colors instead')
  Border backgroundBorder({double width = 1}) =>
      Border.all(color: colors.background, width: width);
}
