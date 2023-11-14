import 'package:flutter_utils/src/utils.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static ThemeCubit of(BuildContext context) =>
      BlocProvider.of<ThemeCubit>(context);
  ThemeCubit() : super(ThemeMode.system);

  void toggle() {
    switch (state) {
      case ThemeMode.system:
        emit(ThemeMode.light);
      case ThemeMode.light:
        emit(ThemeMode.dark);
      case ThemeMode.dark:
        emit(ThemeMode.system);
    }
  }

  static bool isDarkMode(BuildContext context) {
    var mode = of(context).state;
    if (mode == ThemeMode.system) {
      return context.isSystemDarkMode;
    }
    return mode == ThemeMode.dark;
  }
}
