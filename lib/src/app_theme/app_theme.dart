import 'package:flutter_utils/flutter_utils.dart';

class AppTheme extends StatelessWidget {
  static AppThemeData of(BuildContext context) {
    return RepositoryProvider.of<AppThemeData>(context)
        .copyWith(isDarkMode: ThemeCubit.isDarkMode(context));
  }

  const AppTheme({
    Key? key,
    required this.data,
    required this.child,
  }) : super(key: key);
  final AppThemeData data;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => data,
      child: child,
    );
  }
}
