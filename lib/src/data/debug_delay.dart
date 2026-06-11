import 'package:flutter/foundation.dart';

Future debugDelay([int seconds = 1]) async {
  if (kDebugMode) return await Future.delayed(Duration(seconds: seconds));
}
