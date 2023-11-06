import 'dart:io';

import 'package:flutter_utils/src/utils.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    Key? key,
    this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.path,
    this.cacheKey,
    this.emptyMargin,
    this.emptyIcon,
    this.border,
    this.bytes,
    this.emptyWidget,
    this.margin,
    this.onTap,
    this.heroTag,
  }) : super(key: key);
  final String? url;
  final double? width, height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final String? path;
  final String? cacheKey;
  final double? emptyMargin;
  final SvgData? emptyIcon;
  final BoxBorder? border;
  final Uint8List? bytes;
  final Widget? emptyWidget;
  final EdgeInsets? margin;
  final Function? onTap;
  final String? heroTag;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (bytes != null) {
      child = Image.memory(
        bytes!,
        fit: fit,
        width: width,
        height: height,
      );
    } else if (path != null) {
      child = Image.file(
        File(path!),
        fit: fit,
        errorBuilder: (context, obj, stock) =>
            emptyWidget ?? _buildEmpty(context),
      );
    } else if (url != null) {
      child = CachedNetworkImage(
        httpHeaders: AppData.of(context).imageHttpHeaders(),
        cacheKey: cacheKey,
        fit: fit,
        imageUrl: url ?? 'https://hello.com',
        placeholder: (context, url) => emptyWidget ?? _buildLoading(),
        errorWidget: (context, url, stack) =>
            emptyWidget ?? _buildEmpty(context),
      );
    } else {
      child = _buildEmpty(context);
    }

    child = AppCard(
      onTap: onTap,
      width: width,
      height: height,
      border: border,
      borderRadius: borderRadius ?? BorderRadius.zero,
      margin: margin,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: child,
      ),
    );

    if (heroTag != null) {
      child = Hero(
        tag: heroTag!,
        child: child,
      );
    }

    return child;
  }

  _buildLoading() {
    return SizedBox(
      width: width ?? height,
      height: height ?? width,
      child: const Center(
        child: LoadingWidget(),
      ),
    );
  }

  _buildEmpty(BuildContext context) {
    final size = (width ?? height) ?? 24;

    return AppCard(
      width: width ?? height,
      height: height ?? width,
      border: emptyWidget != null
          ? null
          : context.theme.border(
              color: context.theme.disabledColor.withOpacity(.5),
            ),
      borderRadius: borderRadius,
      child: emptyWidget ??
          Center(
            child: SvgIcon(
              emptyIcon ?? AppData.of(context).defaultImage,
              margin: Spaces.only(all: emptyMargin ?? (size / 4.2)),
              color: context.theme.disabledColor,
              size: size,
            ),
          ),
    );
  }
}
