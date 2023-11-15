import 'package:flutter_utils/flutter_utils.dart';

extension AppDateExt2 on DateTime {
  DateTime applyTime(DateTime date, [TimeOfDay? time]) {
    if (time != null) {
      date = time.withDate(date);
    }
    return copyWith(hour: date.hour, minute: date.minute, second: date.second);
  }

  DateTime withCurrentTimeOr(TimeOfDay? timeOfDay) {
    final now =
        timeOfDay != null ? timeOfDay.withDate(DateTime.now()) : DateTime.now();

    return copyWith(
      hour: now.hour,
      minute: now.minute,
      second: now.second,
    );
  }

  String get lang => Locales.selectedLocale.languageCode;

  String format(String format, {bool localized = false}) =>
      DateFormat(format, localized ? lang : null).format(this);

  String get dateString => DateFormat('dd/MM/y').format(this);
  String get localeTimeString => DateFormat('hh:mm a', lang).format(this);
  String get dateTimeString => DateFormat('dd/MM/y hh:mm a').format(this);
  String get dayNameDateTimeString =>
      DateFormat('EEE dd/MM/y hh:mm a').format(this);
  TimeOfDay get timeOfDay => TimeOfDay(
        hour: hour,
        minute: minute,
      );

  String get dateNTimeString => DateFormat('dd/MM/y\nhh:mm a').format(this);
  String get backupDateTimeString =>
      DateFormat('EEE dd/MM/y hh:mm:s a').format(this);
  String get pathDateTimeString =>
      DateFormat('dd-MM-yyyy hh_mm_s a').format(this);
  String get monthNameDateTimeString =>
      DateFormat('dd/MMMM/y hh:mm:s a').format(this);
  String get hourMinuteString => DateFormat('hh:mm').format(this);
  String get hourMinuteAString => DateFormat('h:mm a', lang).format(this);

  String get dayMonthTime => DateFormat('d/MM h:mm a').format(this);
  String get timeWithSeconds => DateFormat('hh:mm:ss').format(this);
  String get amOrPm => DateFormat('a', lang).format(this);
  String get dayNameMonthYear => DateFormat('EEE d/MM/yyyy').format(this);

  String get billDateTimeString => DateFormat('dd-MMM-y hh:mm a').format(this);
  String get billDateString => DateFormat('dd-MMM-y').format(this);
  String get dayMonth => DateFormat('d/MMM', lang).format(this);
  String get monthYear => DateFormat('MM/yyyy', lang).format(this);
  String get dayMonthYear => DateFormat('d/MMM/yyy', lang).format(this);
  String get dayMonthYearEn => DateFormat('d/MMM/yyy').format(this);
  String get dayMonthYearShort => DateFormat('EEEE, MMM yy', lang).format(this);
  String get dayName => DateFormat(DateFormat.WEEKDAY, lang).format(this);
  String get monthName => DateFormat(DateFormat.MONTH).format(this);
}
