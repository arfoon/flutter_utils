import '../../utils.dart';

class AppDataProvider extends StatelessWidget {
  const AppDataProvider({
    Key? key,
    required this.appData,
    required this.child,
  }) : super(key: key);
  final AppData appData;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => appData,
      child: AppTheme(
        data: appData.theme,
        child: child,
      ),
    );
  }
}
