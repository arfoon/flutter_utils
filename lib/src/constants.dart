import 'dart:io';

bool kIsIos = Platform.isIOS;
bool kIsMacOs = Platform.isMacOS;
bool kIsWindows = Platform.isWindows;
bool kIsAndroid = Platform.isAndroid;
bool kIsMobile = Platform.isAndroid || Platform.isIOS;
bool kIsDesktop = Platform.isWindows || Platform.isMacOS;
bool kIsIpod = false;
