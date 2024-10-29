import 'dart:io';

import 'package:flutter/foundation.dart';

// export 'package:flutter/foundation.dart' show kIsWeb;

bool kIsIos = !kIsWeb && Platform.isIOS;
bool kIsMacOs = !kIsWeb && Platform.isMacOS;
bool kIsWindows = !kIsWeb && Platform.isWindows;
bool get kIsAndroid => !kIsWeb && Platform.isAndroid;
bool kIsMobile = Platform.isAndroid || Platform.isIOS;
bool kIsDesktop = kIsWeb || Platform.isWindows || Platform.isMacOS;
bool kIsIpod = false;
