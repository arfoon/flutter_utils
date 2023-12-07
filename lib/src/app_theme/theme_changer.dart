import 'package:flutter_utils/src/utils.dart';

class ThemeChanger extends StatelessWidget {
  const ThemeChanger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        IconData icon = Icons.brightness_auto;
        switch (state) {
          case ThemeMode.system:
            icon = Icons.brightness_auto;
          case ThemeMode.light:
            icon = Icons.light_mode;
          case ThemeMode.dark:
            icon = Icons.dark_mode;
        }
        return IconButton(
          onPressed: () {
            ThemeCubit.of(context).toggle();
          },
          icon: Icon(icon),
        );
      },
    );
  }
}
