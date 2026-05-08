import 'package:flutter_utils/flutter_utils.dart';

class ThemeBuilder extends StatelessWidget {
  const ThemeBuilder({
    super.key,
    required this.builder,
  });
  final Widget Function(BuildContext context) builder;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return builder(context);
      },
    );
  }
}
