import 'package:flutter_utils/flutter_utils.dart';

extension TimeOfDayExtensions on TimeOfDay {
  String get hourMinuteString {
    return "${hourOfPeriod.toString().lessZero}:${minute.toString().lessZero} ${period.toString().split('.').last.toUpperCase()}";
  }

  DateTime withDate(DateTime d) {
    return DateTime(
      d.year,
      d.month,
      d.day,
      hour,
      minute,
    );
  }

  DateTime get dateTime => withDate(DateTime.now());
}

extension StringTimeOfDayExtensions on String {
  TimeOfDay get timeOfDay {
    final s1 = split(' ');
    final t = s1[0].split(':');
    final h = t[0];
    final m = t[1];
    final isPm = s1[1] == 'PM';

    final hour = (h.toInt ?? 0) + (isPm ? 12 : 0);
    final minute = m.toInt ?? 0;
    return TimeOfDay(hour: hour, minute: minute);
  }
}
