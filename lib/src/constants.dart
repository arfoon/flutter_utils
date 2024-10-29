import 'dart:io';

import 'package:flutter/foundation.dart';

// export 'package:flutter/foundation.dart' show kIsWeb;

bool get kIsIos => kIsWeb ? false : Platform.isIOS;
bool get kIsMacOs => kIsWeb ? false : Platform.isMacOS;
bool get kIsWindows => kIsWeb ? false : Platform.isWindows;
bool get kIsAndroid => kIsWeb ? false : Platform.isAndroid;
bool get kIsMobile => kIsWeb ? false : Platform.isAndroid || Platform.isIOS;
bool get kIsDesktop => kIsWeb ? true : Platform.isWindows || Platform.isMacOS;
bool get kIsDesktopPlatform => Platform.isWindows || Platform.isMacOS;
bool get kIsIpod => false;

class UtilConstants {
  static const theme = 'themeMode';
}
