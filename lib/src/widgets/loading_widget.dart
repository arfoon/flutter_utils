import '../utils.dart';

class LoadingWidget extends StatelessWidget {
  final bool accent;
  final double? size;
  final Color? color;
  const LoadingWidget({
    this.accent = false,
    this.size,
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 100,
      width: size ?? 100,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            color ?? (accent ? Colors.white : context.theme.primaryColor),
          ),
        ),
      ),
    );
  }
}
