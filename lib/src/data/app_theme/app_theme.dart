import '../../utils.dart';

class AppTheme extends StatelessWidget {
  static AppThemeData of(BuildContext context) =>
      RepositoryProvider.of<AppThemeData>(context)
          .copyWith(isDarkMode: context.isDarkMode);

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
