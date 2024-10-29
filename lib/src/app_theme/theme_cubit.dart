import 'package:flutter_utils/src/utils.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static ThemeCubit of(BuildContext context) =>
      BlocProvider.of<ThemeCubit>(context);
  ThemeCubit({ThemeMode? initalMode}) : super(initalMode ?? ThemeMode.system);

  ThemeMode toggle() {
    switch (state) {
      case ThemeMode.system:
        emit(ThemeMode.light);
        return ThemeMode.light;
      case ThemeMode.light:
        emit(ThemeMode.dark);
        return ThemeMode.dark;
      case ThemeMode.dark:
        emit(ThemeMode.system);
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

  void changeTo(ThemeMode themeMode) {
    emit(themeMode);
  }
}
