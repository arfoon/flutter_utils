import 'package:flutter_utils/flutter_utils.dart';
import 'package:shamsi_date/shamsi_date.dart';

extension AppHijriDateExt on DateTime {
  Jalali get jalali => Gregorian.fromDateTime(this).toJalali();
  String get hijriDayName => DateFormat(DateFormat.WEEKDAY, 'fa').format(this);
  int get hijriDay => jalali.day;
  int get hijriYear => jalali.year;
  int get hijriMonth => jalali.month;

  String get hijriMonthName {
    String month = '';
    switch (jalali.month) {
      case 1:
        month = 'حمل';
        break;
      case 2:
        month = 'ثور';
        break;
      case 3:
        month = 'جوزا';
        break;
      case 4:
        month = 'سرطان';
        break;
      case 5:
        month = 'اسد';
        break;
      case 6:
        month = 'سنبله';
        break;
      case 7:
        month = 'میزان';
        break;
      case 8:
        month = 'عقرب';
        break;
      case 9:
        month = 'قوس';
        break;
      case 10:
        month = 'جدی';
        break;
      case 11:
        month = 'دلوه';
        break;
      case 12:
        month = 'حوت';
        break;
    }
    return month;
  }

  String get billHijriDate {
    final fmt = jalali.formatter;
    return '${fmt.d.englishToArabicNumbers} - $hijriMonthName - ${fmt.yyyy.englishToArabicNumbers}';
  }

  String get dayMonthYearHijriString {
    final fmt = jalali.formatter;
    return '${fmt.yyyy.englishToArabicNumbers} / ${jalali.month.toString().englishToArabicNumbers} / ${fmt.d.englishToArabicNumbers}';
  }

  String get pickerTitle {
    return '$hijriDayName $hijriDay $hijriMonthName';
  }

  String get pickerMonthYear {
    final m = jalali.month < 10 ? '0${jalali.month}' : '${jalali.month}';
    return '$m - ${jalali.year}';
  }

  String get pickedHijriDate {
    try {
      final fmt = jalali.formatter;
      return '${fmt.yyyy.englishToArabicNumbers} / ${jalali.month.toString().englishToArabicNumbers} / ${fmt.d.englishToArabicNumbers}';
    } catch (e) {
      return '';
    }
  }

  String get timeWithLocaleAP => '$hourMinuteString $amOrPm';
  String get tooltip {
    return '$dayName $timeWithLocaleAP';
  }

  String get messageFormat {
    if (day == DateTime.now().day) return format('h:mm a');
    if (day == DateTime.now().subtract(const Duration(days: 1)).day) {
      return format('h:mm a');
    }
    return format('d/m/yy');
  }

  String get messageFormatDT {
    if (day == DateTime.now().day) return format('h:mm a');
    if (day == DateTime.now().subtract(const Duration(days: 1)).day) {
      return format('h:mm a');
    }
    return format('d/m/yy h:mm a');
  }
}
