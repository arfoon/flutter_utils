import '../../utils.dart';

class AppThemeData {
  final ThemeColors colors;
  final String fontFamily;
  final String? localFontFamily;
  final bool isExactSystem;

  String get localFont => localFontFamily ?? fontFamily;

  AppThemeData({
    required this.colors,
    required this.fontFamily,
    this.localFontFamily,
    this.isExactSystem = false,
  });

  TextTheme newTextThemeOf(Color color, {double i = 0}) {
    return TextTheme(
      //Label 10
      labelSmall: TextStyle(fontSize: 11 + i, fontWeight: FontWeight.normal),
      labelMedium: TextStyle(fontSize: 11 + i, fontWeight: FontWeight.w600),
      labelLarge: TextStyle(fontSize: 11 + i, fontWeight: FontWeight.bold),
      //Body : 18
      bodySmall: TextStyle(fontSize: 14 + i, fontWeight: FontWeight.normal),
      bodyMedium: TextStyle(fontSize: 14 + i, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontSize: 14 + i, fontWeight: FontWeight.bold),
      //Title : 24
      titleSmall: TextStyle(fontSize: 18 + i, fontWeight: FontWeight.normal),
      titleMedium: TextStyle(fontSize: 18 + i, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(fontSize: 18 + i, fontWeight: FontWeight.bold),
      //Headline 28
      headlineSmall: TextStyle(fontSize: 24 + i, fontWeight: FontWeight.normal),
      headlineMedium: TextStyle(fontSize: 24 + i, fontWeight: FontWeight.w600),
      headlineLarge: TextStyle(fontSize: 24 + i, fontWeight: FontWeight.bold),
      //Display 36
      displaySmall: TextStyle(fontSize: 32 + i, fontWeight: FontWeight.normal),
      displayMedium: TextStyle(fontSize: 32 + i, fontWeight: FontWeight.w600),
      displayLarge: TextStyle(fontSize: 32 + i, fontWeight: FontWeight.bold),
    ).apply(
      decorationColor: color,
      bodyColor: color,
      displayColor: color,
    );
  }

  TextTheme textThemeOf(Color? color) {
    double i = 0; //Locales.selectedLocaleRtl ? -2 : 0;
    color ??= colors.text;
    if (!isExactSystem) return newTextThemeOf(color);
    return TextTheme(
      // headline1: TextStyle(
      //   fontSize: 32 + i,
      //   fontWeight: FontWeight.normal,
      // ),
      displayLarge: TextStyle(
        fontSize: 32 + i,
        fontWeight: FontWeight.normal,
      ),
      // headline2: TextStyle(
      //   fontSize: 32 + i,
      //   fontWeight: FontWeight.w600,
      // ),
      displayMedium: TextStyle(
        fontSize: 32 + i,
        fontWeight: FontWeight.w600,
      ),
      // headline3: TextStyle(
      //   fontSize: 28 + i,
      //   fontWeight: FontWeight.normal,
      // ),
      displaySmall: TextStyle(
        fontSize: 28 + i,
        fontWeight: FontWeight.normal,
      ),
      // headline4: TextStyle(
      //   fontSize: 28 + i,
      //   fontWeight: FontWeight.w600,
      // ),
      headlineMedium: TextStyle(
        fontSize: 28 + i,
        fontWeight: FontWeight.w600,
      ),
      // headline5: TextStyle(
      //   fontSize: 24 + i,
      //   fontWeight: FontWeight.normal,
      // ),
      headlineSmall: TextStyle(
        fontSize: 24 + i,
        fontWeight: FontWeight.normal,
      ),
      // headline6: TextStyle(
      //   fontSize: 24 + 1,
      //   height: 1,
      //   fontWeight: FontWeight.w600,
      // ),
      titleLarge: const TextStyle(
        fontSize: 24 + 1,
        height: 1,
        fontWeight: FontWeight.w600,
      ),
      // subtitle1: TextStyle(
      //   fontSize: 18 + i,
      //   fontWeight: FontWeight.w400,
      // ),
      titleMedium: TextStyle(
        fontSize: 18 + i,
        fontWeight: FontWeight.w400,
      ),
      // subtitle2: TextStyle(
      //   fontSize: 18 + i,
      //   fontWeight: FontWeight.w600,
      // ),
      titleSmall: TextStyle(
        fontSize: 18 + i,
        fontWeight: FontWeight.w600,
      ),
      // bodyText1: TextStyle(
      //   fontSize: 14 + i,
      //   fontWeight: FontWeight.w400,
      // ),
      bodyLarge: TextStyle(
        fontSize: 14 + i,
        fontWeight: FontWeight.w400,
      ),
      // bodyText2: TextStyle(
      //   fontSize: 14 + i,
      //   fontWeight: FontWeight.w600,
      // ),
      bodyMedium: TextStyle(
        fontSize: 14 + i,
        fontWeight: FontWeight.w600,
      ),
      // caption: TextStyle(
      //   fontSize: 12 + i,
      //   fontWeight: FontWeight.normal,
      // ),
      bodySmall: TextStyle(
        fontSize: 12 + i,
        fontWeight: FontWeight.normal,
      ),
      // overline: TextStyle(
      //   fontSize: 10 + i,
      //   fontWeight: FontWeight.w600,
      // ),
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

  ThemeData themeData({
    required ThemeColors colors,
    Brightness? brightness,
  }) {
    return ThemeData(
      visualDensity: VisualDensity.comfortable,
      fontFamily: fontFamily,
      primarySwatch: colors.primarySwatch ?? Colors.teal,
      primaryColor: colors.primary,
      primaryColorDark: colors.primaryDark,
      primaryColorLight: colors.primaryLight,
      backgroundColor: colors.background,
      colorScheme: ColorScheme.light(
        brightness: brightness ?? Brightness.light,
        primary: colors.primary,
        // onPrimary: primaryColor,
        secondary: colors.secondary ?? colors.primaryLight,
        // onSecondary: primaryColorDark,
        error: colors.error,
        // onError: AppColors.red,
        background: colors.background,
        surface: colors.surface,
        // onBackground: backgroundColor,
      ),
      scaffoldBackgroundColor: colors.surface,
      canvasColor: colors.background,
      textTheme: textThemeOf(colors.text),
      primaryTextTheme: textThemeOf(colors.primary),
      disabledColor: colors.disabled,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colors.primary,
      ),
      appBarTheme: AppBarTheme(
        color: colors.background,
        elevation: .0,
        centerTitle: false,
        titleTextStyle: textThemeOf(colors.text).subtitle2,
        toolbarTextStyle: textThemeOf(colors.text).subtitle2,
        iconTheme: IconThemeData(color: colors.primary),
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness:
              kIsAndroid ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
      ),
      dividerColor: colors.divider,
      dividerTheme: DividerThemeData(
        color: colors.divider,
        space: 0,
        endIndent: 0,
        indent: 0,
        thickness: 2,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors.primaryLight),
        ),
      ),
      iconTheme: IconThemeData(color: colors.primary),
    );
  }

  ThemeData get light {
    return themeData(
      colors: colors,
      brightness: Brightness.light,
    );
  }

  ThemeData get material {
    return light;
  }

  AppBarTheme get appBarTheme => material.appBarTheme;

  Color valueColor(double value, {bool isBalance = false}) {
    if (value == 0) return light.disabledColor;
    return value < 0 ? negativeColor : (isBalance ? textColor : positiveColor);
  }

  Color moneyColor({required bool isDebit}) => valueColor(isDebit ? -4 : 4);

  ColorScheme get colorScheme => material.colorScheme;

  Color get dividerColor => colors.divider;
  Color get primaryColor => colors.primary;
  Color get primaryColorDark => material.primaryColorDark;
  Color get primaryColorLight => material.primaryColorLight;
  Color get shadowColor => material.shadowColor;
  Color get disabledColor => colors.disabled;
  Color get backgroundColor => colors.background;
  Color get scaffoldBackgroundColor => material.scaffoldBackgroundColor;
  Color get disabledLightColor => colors.disabledLight;
  Color get errorColor => colors.error;
  Color get primaryColor05 => colors.primary.withOpacity(.05);
  Color get negativeColor => colors.negative;
  Color get positiveColor => colors.positive;
  Color positiveColorIf(bool b) => b ? positiveColor : negativeColor;
  Color get textColor => colors.text;
  Color get warningColor => colors.warning;
  Color get selectedRecordColor => colors.primary;
  Color get selectedRecordColor03 => selectedRecordColor.withOpacity(.3);
  Color get okColor => colors.ok;
  Color warningColorIf(bool when) => when ? colors.warning : textColor;

  //Colored Text Theme
  TextTheme get textTheme => textThemeOf(colors.text);
  TextTheme get primaryTextTheme => textThemeOf(colors.primary);
  TextTheme get primaryDarkTextTheme => textThemeOf(colors.primaryDark);
  TextTheme get blackTextTheme => textThemeOf(colors.text);
  TextTheme get disabledLightTextTheme => textThemeOf(colors.disabledLight);
  TextTheme get whiteSmokeTextTheme => textThemeOf(colors.surface);
  TextTheme get disabledTextTheme => textThemeOf(colors.disabled);
  TextTheme get negativeTextTheme => textThemeOf(negativeColor);
  TextTheme get positiveTextTheme => textThemeOf(positiveColor);
  TextTheme positiveTextThemeIf(bool b) => textThemeOf(positiveColorIf(b));
  TextTheme get errorTextTheme => textThemeOf(colors.error);

  Border disabledBorder({double width = 1}) =>
      Border.all(color: colors.disabled, width: width);
  // Border disabledLightBorder({double width = 1}) =>
  //     Border.all(color: disabledLightColor, width: width);
  Border border({double width = 1, Color? color}) =>
      Border.all(color: color ?? colors.primary, width: width);
  Border backgroundBorder({double width = 1}) =>
      Border.all(color: colors.background, width: width);

  TextTheme get whiteTextTheme => textThemeOf(Colors.white);
}
