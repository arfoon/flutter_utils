import 'package:flutter_utils/flutter_utils.dart';

class LoaderWidget<T> extends StatefulWidget {
  final Future<T> Function()? load;
  final bool pop;
  final Function(T value)? onSuccess;
  final Function(Object error, StackTrace stackTrace)? onError;
  final bool barrierDismissible;

  const LoaderWidget({
    super.key,
    this.load,
    this.pop = true,
    this.onSuccess,
    this.onError,
    this.barrierDismissible = true,
  });

  Future<T?> show(BuildContext context) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => this,
    );
  }

  @override
  State<LoaderWidget<T>> createState() => _LoaderWidgetState<T>();
}

class _LoaderWidgetState<T> extends State<LoaderWidget<T>> {
  void _init() async {
    if (widget.load != null) {
      try {
        final value = await widget.load?.call();
        widget.onSuccess?.call(value as T);

        if (mounted) {
          if (widget.pop) {
            context.popIfCan(value);
          }
        }
      } catch (e, s) {
        widget.onError?.call(e, s);
        if (mounted && widget.onError == null) {
          context.showErrorSnackBar(
            AppData.of(context).localizeError?.call(context, e) ?? e.toString(),
          );
        }
        if (mounted) {
          context.popIfCan();
        }
      }
    }
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const CenterDialog(
      width: 100,
      height: 100,
      child: LoadingWidget(),
    );
  }
}
