import 'package:flutter_utils/flutter_utils.dart';

class AppDataProvider extends StatelessWidget {
  const AppDataProvider({
    Key? key,
    required this.appData,
    required this.builder,
  }) : super(key: key);
  final AppData appData;
  final Widget Function(ThemeMode mode) builder;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
            create: (_) => ThemeCubit(
                  initalMode: appData.initalMode,
                )),
      ],
      child: RepositoryProvider(
        create: (context) => appData,
        child: AppTheme(
          data: appData.theme,
          child: BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, mode) {
              return builder(mode);
            },
          ),
        ),
      ),
    );
  }
}
