import 'package:flutter_utils/src/utils.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static ThemeCubit of(BuildContext context) =>
      BlocProvider.of<ThemeCubit>(context);
  ThemeCubit({ThemeMode? initalMode})
      : super(
          initalMode ??
              ThemeMode.values.firstWhere(
                (t) => t.index == (pref?.getInt(UtilConstants.theme)),
                orElse: () => ThemeMode.system,
              ),
        );

  ThemeMode toggle({bool remember = true}) {
    switch (state) {
      case ThemeMode.system:
        emit(ThemeMode.light);
        if (remember) pref?.setInt(UtilConstants.theme, ThemeMode.light.index);
        return ThemeMode.light;
      case ThemeMode.light:
        emit(ThemeMode.dark);
        if (remember) pref?.setInt(UtilConstants.theme, ThemeMode.dark.index);
        return ThemeMode.dark;
      case ThemeMode.dark:
        emit(ThemeMode.system);
        if (remember) pref?.setInt(UtilConstants.theme, ThemeMode.system.index);
        return ThemeMode.system;
    }
  }

  static bool isDarkMode(BuildContext context) {
    var mode = of(context).state;

    if (mode == ThemeMode.system) {
      return context.isSystemDarkMode;
    }
    return mode == ThemeMode.dark;
  }

  void changeTo(ThemeMode themeMode, {bool remember = true}) {
    if (remember) {
      pref?.setInt(UtilConstants.theme, themeMode.index);
    }
    emit(themeMode);
  }
}
