import 'package:flutter_utils/flutter_utils.dart';

extension AppStringExt on String {
  String or(String s, bool when) {
    return when ? s : this;
  }

  bool get isValidEmail {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool get isValidPhone {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,14}$)';
    return RegExp(pattern).hasMatch(this);
  }

  bool get isNotValidPhone => !isValidPhone;

  String? validateEmail(BuildContext context) {
    return (isValidEmail || isEmpty)
        ? null
        : 'invalid'.localize(context, localeParams: ['email']);
  }

  bool startWithAndLen(String s, int len) {
    return startsWith(s) && length == len;
  }

  String get phoneForWhatsApp {
    var phone = this;
    if (phone.startWithAndLen('07', 10)) {
      phone = "+93${phone.replaceFirst('0', '')}";
    } else if (phone.startWithAndLen('03', 11)) {
      phone = "+92${phone.replaceFirst('0', '')}";
    } else if (phone.startWithAndLen('053', 11)) {
      //turkia
      phone = "+90${phone.replaceFirst('0', '')}";
    } else if (phone.startWithAndLen('09', 11)) {
      //iran
      phone = "+98${phone.replaceFirst('0', '')}";
    } else if (phone.startsWith('00')) {
      phone = phone.replaceRange(0, 2, '+');
    } else if (phone.startsWith('09')) {
      phone = phone.replaceRange(0, 2, '+9');
    }
    return phone;
  }

  String get bold => '*${trim()}*';

  String get removeDotZero {
    if (endsWith('.0')) {
      return replaceAll('.0', '');
    }
    return this;
  }

  String addWord(String s) {
    if (s.trim().isEmpty) return this;
    if (s.contains('null')) return this;
    return '$this $s';
  }

  bool containsAny(String s) {
    return toLowerCase().contains(s.toLowerCase());
  }
}
