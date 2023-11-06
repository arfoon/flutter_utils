import 'package:flutter_utils/src/utils.dart';

extension AppThemeExtension on ThemeData {
  TextTheme textThemeOf(Color? color) {
    double i = 0; //Locales.selectedLocaleRtl ? -2 : 0;
    color ??= textTheme.bodyText3.color;
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
    required Color primaryColor,
    required Color primaryColorDark,
    required Color primaryLightColor,
    required Color backgroundColor,
    required Color surface,
    required Color textColor,
    required Color disabledColor,
    required Color dividerColor,
    MaterialColor? primarySwatch,
    required String fontFamily,
  }) {
    return ThemeData(
      visualDensity: VisualDensity.comfortable,
      fontFamily: fontFamily,
      primarySwatch: primarySwatch ?? Colors.teal,
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryLightColor,
      backgroundColor: backgroundColor,
      colorScheme: ColorScheme.light(
        brightness: brightness,
        primary: primaryColor,
        // onPrimary: primaryColor,
        secondary: primaryLightColor,
        // onSecondary: primaryColorDark,
        // error: Colors.red,
        // onError: AppColors.red,
        background: backgroundColor,
        surface: surface,
        // onBackground: backgroundColor,
      ),
      scaffoldBackgroundColor: surface,
      canvasColor: backgroundColor,
      textTheme: textThemeOf(textColor),
      primaryTextTheme: textThemeOf(primaryColor),
      disabledColor: disabledColor,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: primaryColor,
      ),
      appBarTheme: AppBarTheme(
        color: backgroundColor,
        elevation: .0,
        centerTitle: false,
        titleTextStyle: textThemeOf(textColor).subtitle2,
        toolbarTextStyle: textThemeOf(textColor).subtitle2,
        iconTheme: IconThemeData(color: primaryColor),
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness:
              kIsAndroid ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
      ),
      dividerColor: dividerColor,
      dividerTheme: DividerThemeData(
        color: dividerColor,
        space: 0,
        endIndent: 0,
        indent: 0,
        thickness: 2,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primaryLightColor),
        ),
      ),
      iconTheme: IconThemeData(color: primaryColor),
    );
  }

  Border disabledBorder({double width = 1}) =>
      Border.all(color: disabledColor, width: width);
  // Border disabledLightBorder({double width = 1}) =>
  //     Border.all(color: disabledLightColor, width: width);
  Border border({double width = 1, Color? color}) =>
      Border.all(color: color ?? primaryColor, width: width);
  Border backgroundBorder({double width = 1}) =>
      Border.all(color: backgroundColor, width: width);

  TextTheme get whiteTextTheme => textThemeOf(Colors.white);
  TextTheme get blackTextTheme => textThemeOf(Colors.black);
}
