import 'package:flutter_utils/flutter_utils.dart';

class LoaderWidget<T> extends StatefulWidget {
  final Future<T> Function()? load;
  final bool pop;
  final Function(T value)? onSuccess;
  final Function(Object error, StackTrace stackTrace)? onError;
  final bool barrierDismissible;
  final Widget Function(
      Object error, StackTrace stackTrace, VoidCallback onRetry)? errorBuilder;
  final Color? color;

  const LoaderWidget({
    super.key,
    this.load,
    this.pop = true,
    this.onSuccess,
    this.onError,
    this.barrierDismissible = true,
    this.errorBuilder,
    this.color,
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
  Object? _error;
  StackTrace? _stackTrace;

  void _call() async {
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
        if (widget.errorBuilder != null) {
          setState(() {
            _error = e;
            _stackTrace = s;
          });
          return;
        }

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
    _call();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null && widget.errorBuilder != null) {
      return widget.errorBuilder!(_error!, _stackTrace!, _call);
    }
    return CenterDialog(
      width: 100,
      height: 100,
      child: LoadingWidget(color: widget.color),
    );
  }
}
