import 'package:flutter_utils/flutter_utils.dart';

extension AppContextExt on BuildContext {
  //For Platform Dependent sizing
  bool get isMobile => kIsMobile || (kIsDesktop && width < 500);
  bool get isDesktop => kIsDesktop && !isMobile;

  double heightDot(double percentage) => height / 100 * percentage;
  double widthDot(double percentage) => width / 100 * percentage;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  //! For Web
  bool get isSmall => height < 600;
  bool get isLargeX => width > 700;
  bool get isHorizontal => width > 700;
  bool get smallMobile => height < 700;

  bool get isActive => (ModalRoute.of(this)?.isActive ?? false);

  int? get rotateRtl => rtl ? 2 : null;

  unfocusMobile() {
    if (kIsMobile) {
      FocusScope.of(this).unfocus();
    }
  }

  double keyboardHeight({double? whenHidedHeight}) {
    final height = MediaQuery.of(this).viewInsets.bottom;
    if (height == 0 && whenHidedHeight != null) {
      return whenHidedHeight;
    }
    return height;
  }

  bool get hasKeyboard => keyboardHeight() != 0;

  bool get rtl => !ltr;
  bool get ltr => textDirection == TextDirection.ltr;
  bool get en => Locales.currentLocale(this)?.languageCode == 'en';
  TextDirection get textDirection => Directionality.of(this);

  showErrorSnackBar(
    String title, {
    String? subtitle,
    Color? color,
    SnackBarAction? action,
    SvgData? icon,
    double iconSize = 26,
  }) {
    showSnackBar(
      title,
      color: colors.error,
      subtitle: subtitle,
      action: action,
      icon: icon,
      iconSize: iconSize,
    );
  }

  showSnackBar(
    String title, {
    String? subtitle,
    Color? color,
    SnackBarAction? action,
    SvgData? icon,
    double iconSize = 26,
  }) {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();

    Widget content = Text(
      title,
      style: theme.backgroundTextTheme.bodyMedium,
    );
    if (subtitle != null) {
      content = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          content,
          Spaces.xminiHeight,
          Text(
            subtitle,
            style: theme.backgroundTextTheme.label,
          )
        ],
      );
    }

    if (icon != null) {
      content = Row(
        children: [
          SvgIcon(
            icon,
            color: theme.backgroundColor,
            margin: Spaces.tinyEnd,
            size: iconSize,
          ),
          Expanded(
            child: content,
          ),
        ],
      );
    }

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: color ?? theme.primaryColor,
        behavior: isMobile ? SnackBarBehavior.fixed : SnackBarBehavior.floating,
        action: action,
        width: isMobile ? null : widthDot(55),
      ),
    );
  }

  /// Picks a [Color] from [colors]. Use [colors] for direct access.
  Color pick(Color Function(AppColors c) select) => select(colors);
}
